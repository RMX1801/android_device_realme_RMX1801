/*
 * Copyright (C) 2015 The CyanogenMod Project
 *               2017-2020 The LineageOS Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.realmeparts.settings.vibration;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.AttributeSet;
import android.widget.SeekBar;
import android.os.Vibrator;
import androidx.preference.Preference;
import androidx.preference.PreferenceManager;
import androidx.preference.PreferenceViewHolder;

import com.realmeparts.settings.R;
import com.realmeparts.settings.util.Utils;

public class VibratorStrengthPreference extends Preference implements
        SeekBar.OnSeekBarChangeListener {

    private final int mMinValue;
    private final int mMaxValue;
    private final Vibrator mVibrator;

    private static final String FILE_LEVEL = "/sys/devices/virtual/timed_output/vibrator/vtg_level";
    private static final long[] testVibrationPattern = {0,250};

    public VibratorStrengthPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        // from drivers/platform/msm/qpnp-haptic.c
        // #define QPNP_HAP_VMAX_MIN_MV         116
        // #define QPNP_HAP_VMAX_MAX_MV         3596
        mMinValue = 116;
        mMaxValue = 3596;

        mVibrator = (Vibrator) context.getSystemService(Context.VIBRATOR_SERVICE);
        setLayoutResource(R.layout.preference_seek_bar);
    }

    @Override
    public void onBindViewHolder(PreferenceViewHolder holder) {
        super.onBindViewHolder(holder);

        int mOldStrength = Integer.parseInt(getValue());
        SeekBar mSeekBar = (SeekBar) holder.findViewById(R.id.seekbar);
        mSeekBar.setMax(mMaxValue - mMinValue);
        mSeekBar.setProgress(mOldStrength - mMinValue);
        mSeekBar.setOnSeekBarChangeListener(this);
    }

    public static boolean isSupported() {
        return Utils.fileWritable(FILE_LEVEL);
    }

    public static String getValue() {
        return Utils.getFileValue(FILE_LEVEL, "3596");
    }

    private void setValue(String newValue) {
        Utils.writeValue(FILE_LEVEL, newValue);
        SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(getContext()).edit();
        editor.putString("vib_strength", newValue);
        editor.commit();
        if (true) {
            mVibrator.vibrate(testVibrationPattern, -1);
        }
    }

    public static void restore(Context context) {
        if (!isSupported()) {
            return;
        }

        String storedValue = PreferenceManager.getDefaultSharedPreferences(context).getString("vib_strength", "3596");
        Utils.writeValue(FILE_LEVEL, storedValue);
    }

    public void onProgressChanged(SeekBar seekBar, int progress, boolean fromTouch) {
        // NA
    }

    public void onStartTrackingTouch(SeekBar seekBar) {
        // NA
    }

    public void onStopTrackingTouch(SeekBar seekBar) {
        setValue(String.valueOf(seekBar.getProgress() + mMinValue));
    }
}
