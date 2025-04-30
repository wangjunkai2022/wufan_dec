package com.papa.gsyvideoplayer.video;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.papa.gsyvideoplayer.model.b;
import com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer;
import com.papa.gsyvideoplayer.video.base.GSYVideoPlayer;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import moe.codeest.enviews.ENDownloadView;
/* loaded from: classes4.dex */
public class ListGSYVideoPlayer extends StandardGSYVideoPlayer {

    /* renamed from: a  reason: collision with root package name */
    protected List<b> f55331a;

    /* renamed from: b  reason: collision with root package name */
    protected int f55332b;

    public ListGSYVideoPlayer(Context context, Boolean bool) {
        super(context, bool);
        this.f55331a = new ArrayList();
    }

    public boolean a() {
        if (this.f55332b < this.f55331a.size() - 1) {
            int i2 = this.f55332b + 1;
            this.f55332b = i2;
            b bVar = this.f55331a.get(i2);
            this.mSaveChangeViewTIme = 0L;
            e(this.f55331a, this.mCache, this.f55332b, null, this.mMapHeadData, false);
            if (!TextUtils.isEmpty(bVar.a())) {
                this.mTitleTextView.setText(bVar.a());
            }
            startPlayLogic();
            return true;
        }
        return false;
    }

    public boolean b(List<b> list, boolean z3, int i2) {
        return d(list, z3, i2, null, new HashMap());
    }

    public boolean c(List<b> list, boolean z3, int i2, File file) {
        return d(list, z3, i2, file, new HashMap());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void changeUiToNormal() {
        super.changeUiToNormal();
        if (!this.mHadPlay || this.f55332b >= this.f55331a.size()) {
            return;
        }
        setViewShowState(this.mThumbImageViewLayout, 8);
        setViewShowState(this.mTopContainer, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 8);
        setViewShowState(this.mLoadingProgressBar, 0);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, 8);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).n();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    public void cloneParams(GSYBaseVideoPlayer gSYBaseVideoPlayer, GSYBaseVideoPlayer gSYBaseVideoPlayer2) {
        super.cloneParams(gSYBaseVideoPlayer, gSYBaseVideoPlayer2);
        ListGSYVideoPlayer listGSYVideoPlayer = (ListGSYVideoPlayer) gSYBaseVideoPlayer;
        ListGSYVideoPlayer listGSYVideoPlayer2 = (ListGSYVideoPlayer) gSYBaseVideoPlayer2;
        listGSYVideoPlayer2.f55332b = listGSYVideoPlayer.f55332b;
        listGSYVideoPlayer2.f55331a = listGSYVideoPlayer.f55331a;
    }

    public boolean d(List<b> list, boolean z3, int i2, File file, Map<String, String> map) {
        return e(list, z3, i2, file, map, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean e(List<b> list, boolean z3, int i2, File file, Map<String, String> map, boolean z4) {
        this.f55331a = list;
        this.f55332b = i2;
        this.mMapHeadData = map;
        b bVar = list.get(i2);
        boolean up = setUp(bVar.b(), z3, file, bVar.a(), z4);
        if (!TextUtils.isEmpty(bVar.a())) {
            this.mTitleTextView.setText(bVar.a());
        }
        return up;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView, c2.a
    public void onAutoCompletion() {
        if (a()) {
            return;
        }
        super.onAutoCompletion();
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView, c2.a
    public void onCompletion() {
        releaseNetWorkState();
        if (this.f55332b < this.f55331a.size()) {
            return;
        }
        super.onCompletion();
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView, c2.a
    public void onPrepared() {
        super.onPrepared();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public void prepareVideo() {
        super.prepareVideo();
        if (!this.mHadPlay || this.f55332b >= this.f55331a.size()) {
            return;
        }
        setViewShowState(this.mLoadingProgressBar, 0);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).n();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    public void resolveNormalVideoShow(View view, ViewGroup viewGroup, GSYVideoPlayer gSYVideoPlayer) {
        if (gSYVideoPlayer != null) {
            ListGSYVideoPlayer listGSYVideoPlayer = (ListGSYVideoPlayer) gSYVideoPlayer;
            b bVar = this.f55331a.get(this.f55332b);
            if (!TextUtils.isEmpty(bVar.a())) {
                this.mTitleTextView.setText(bVar.a());
            }
        }
        super.resolveNormalVideoShow(view, viewGroup, gSYVideoPlayer);
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    public GSYBaseVideoPlayer startWindowFullscreen(Context context, boolean z3, boolean z4) {
        GSYBaseVideoPlayer startWindowFullscreen = super.startWindowFullscreen(context, z3, z4);
        if (startWindowFullscreen != null) {
            ListGSYVideoPlayer listGSYVideoPlayer = (ListGSYVideoPlayer) startWindowFullscreen;
            b bVar = this.f55331a.get(this.f55332b);
            if (!TextUtils.isEmpty(bVar.a())) {
                listGSYVideoPlayer.mTitleTextView.setText(bVar.a());
            }
        }
        return startWindowFullscreen;
    }

    public ListGSYVideoPlayer(Context context) {
        super(context);
        this.f55331a = new ArrayList();
    }

    public ListGSYVideoPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f55331a = new ArrayList();
    }
}
