package org.cocos2dx.lib;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.MediaPlayer;
import com.chukong.cocosplay.client.CocosPlayClient;
import java.io.FileInputStream;
import net.lingala.zip4j.util.e;
/* loaded from: classes5.dex */
public class Cocos2dxMusic {
    private static final String TAG = "Cocos2dxMusic";
    private MediaPlayer mBackgroundMediaPlayer;
    private final Context mContext;
    private String mCurrentPath;
    private float mLeftVolume;
    private boolean mPaused;
    private float mRightVolume;
    private boolean mIsLoop = false;
    private boolean mManualPaused = false;

    public Cocos2dxMusic(Context context) {
        this.mContext = context;
        initData();
    }

    private MediaPlayer createMediaplayer(String str) {
        MediaPlayer mediaPlayer = new MediaPlayer();
        try {
            if (CocosPlayClient.isEnabled() && !CocosPlayClient.isDemo()) {
                CocosPlayClient.updateAssets(str);
            }
            CocosPlayClient.notifyFileLoaded(str);
            if (str.startsWith(e.F0)) {
                FileInputStream fileInputStream = new FileInputStream(str);
                mediaPlayer.setDataSource(fileInputStream.getFD());
                fileInputStream.close();
            } else {
                AssetFileDescriptor openFd = this.mContext.getAssets().openFd(str);
                mediaPlayer.setDataSource(openFd.getFileDescriptor(), openFd.getStartOffset(), openFd.getLength());
            }
            mediaPlayer.prepare();
            mediaPlayer.setVolume(this.mLeftVolume, this.mRightVolume);
            return mediaPlayer;
        } catch (Exception e4) {
            StringBuilder sb = new StringBuilder();
            sb.append("error: ");
            sb.append(e4.getMessage());
            return null;
        }
    }

    private void initData() {
        this.mLeftVolume = 0.5f;
        this.mRightVolume = 0.5f;
        this.mBackgroundMediaPlayer = null;
        this.mPaused = false;
        this.mCurrentPath = null;
    }

    public void end() {
        MediaPlayer mediaPlayer = this.mBackgroundMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.release();
        }
        initData();
    }

    public float getBackgroundVolume() {
        if (this.mBackgroundMediaPlayer != null) {
            return (this.mLeftVolume + this.mRightVolume) / 2.0f;
        }
        return 0.0f;
    }

    public boolean isBackgroundMusicPlaying() {
        MediaPlayer mediaPlayer = this.mBackgroundMediaPlayer;
        if (mediaPlayer == null) {
            return false;
        }
        return mediaPlayer.isPlaying();
    }

    public void onEnterBackground() {
        MediaPlayer mediaPlayer = this.mBackgroundMediaPlayer;
        if (mediaPlayer == null || !mediaPlayer.isPlaying()) {
            return;
        }
        this.mBackgroundMediaPlayer.pause();
        this.mPaused = true;
    }

    public void onEnterForeground() {
        MediaPlayer mediaPlayer;
        if (this.mManualPaused || (mediaPlayer = this.mBackgroundMediaPlayer) == null || !this.mPaused) {
            return;
        }
        mediaPlayer.start();
        this.mPaused = false;
    }

    public void pauseBackgroundMusic() {
        MediaPlayer mediaPlayer = this.mBackgroundMediaPlayer;
        if (mediaPlayer == null || !mediaPlayer.isPlaying()) {
            return;
        }
        this.mBackgroundMediaPlayer.pause();
        this.mPaused = true;
        this.mManualPaused = true;
    }

    public void playBackgroundMusic(String str, boolean z3) {
        String str2 = this.mCurrentPath;
        if (str2 == null) {
            this.mBackgroundMediaPlayer = createMediaplayer(str);
            this.mCurrentPath = str;
        } else if (!str2.equals(str)) {
            MediaPlayer mediaPlayer = this.mBackgroundMediaPlayer;
            if (mediaPlayer != null) {
                mediaPlayer.release();
            }
            this.mBackgroundMediaPlayer = createMediaplayer(str);
            this.mCurrentPath = str;
        }
        MediaPlayer mediaPlayer2 = this.mBackgroundMediaPlayer;
        if (mediaPlayer2 != null) {
            try {
                if (this.mPaused) {
                    mediaPlayer2.seekTo(0);
                    this.mBackgroundMediaPlayer.start();
                } else if (mediaPlayer2.isPlaying()) {
                    this.mBackgroundMediaPlayer.seekTo(0);
                } else {
                    this.mBackgroundMediaPlayer.start();
                }
                this.mBackgroundMediaPlayer.setLooping(z3);
                this.mPaused = false;
                this.mIsLoop = z3;
            } catch (Exception unused) {
            }
        }
    }

    public void preloadBackgroundMusic(String str) {
        String str2 = this.mCurrentPath;
        if (str2 == null || !str2.equals(str)) {
            MediaPlayer mediaPlayer = this.mBackgroundMediaPlayer;
            if (mediaPlayer != null) {
                mediaPlayer.release();
            }
            this.mBackgroundMediaPlayer = createMediaplayer(str);
            this.mCurrentPath = str;
        }
    }

    public void resumeBackgroundMusic() {
        MediaPlayer mediaPlayer = this.mBackgroundMediaPlayer;
        if (mediaPlayer == null || !this.mPaused) {
            return;
        }
        mediaPlayer.start();
        this.mPaused = false;
        this.mManualPaused = false;
    }

    public void rewindBackgroundMusic() {
        if (this.mBackgroundMediaPlayer != null) {
            playBackgroundMusic(this.mCurrentPath, this.mIsLoop);
        }
    }

    public void setBackgroundVolume(float f4) {
        if (f4 < 0.0f) {
            f4 = 0.0f;
        }
        if (f4 > 1.0f) {
            f4 = 1.0f;
        }
        this.mRightVolume = f4;
        this.mLeftVolume = f4;
        MediaPlayer mediaPlayer = this.mBackgroundMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setVolume(f4, f4);
        }
    }

    public void stopBackgroundMusic() {
        MediaPlayer mediaPlayer = this.mBackgroundMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.release();
            this.mBackgroundMediaPlayer = createMediaplayer(this.mCurrentPath);
            this.mPaused = false;
        }
    }
}
