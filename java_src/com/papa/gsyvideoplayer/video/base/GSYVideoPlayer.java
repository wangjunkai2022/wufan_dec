package com.papa.gsyvideoplayer.video.base;

import android.content.Context;
import android.util.AttributeSet;
import com.papa.gsyvideoplayer.d;
/* loaded from: classes4.dex */
public abstract class GSYVideoPlayer extends GSYBaseVideoPlayer {
    public GSYVideoPlayer(Context context, Boolean bool) {
        super(context, bool);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView
    protected boolean backFromFull(Context context) {
        return d.c0(context);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    protected int getFullId() {
        return d.A;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView
    public a getGSYVideoManager() {
        d.e0().Q(getContext().getApplicationContext());
        return d.e0();
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    protected int getSmallId() {
        return d.f54960z;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView
    protected void releaseVideos() {
        d.j0();
    }

    public GSYVideoPlayer(Context context) {
        super(context);
    }

    public GSYVideoPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public GSYVideoPlayer(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
