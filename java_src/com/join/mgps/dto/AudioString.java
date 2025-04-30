package com.join.mgps.dto;

import androidx.annotation.NonNull;
/* loaded from: classes4.dex */
public class AudioString implements Comparable<AudioString> {
    private String audioUrl;
    private Integer priority;

    public String getAudioUrl() {
        return this.audioUrl;
    }

    public Integer getPriority() {
        return this.priority;
    }

    public void setAudioUrl(String str) {
        this.audioUrl = str;
    }

    public void setPriority(Integer num) {
        this.priority = num;
    }

    @Override // java.lang.Comparable
    public int compareTo(@NonNull AudioString audioString) {
        return this.priority.compareTo(audioString.getPriority());
    }
}
