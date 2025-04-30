package org.cocos2dx.lib;

import android.content.Context;
import android.media.SoundPool;
import com.chukong.cocosplay.client.CocosPlayClient;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Semaphore;
import net.lingala.zip4j.util.e;
/* loaded from: classes5.dex */
public class Cocos2dxSound {
    private static final int INVALID_SOUND_ID = -1;
    private static final int INVALID_STREAM_ID = -1;
    private static final int MAX_SIMULTANEOUS_STREAMS_DEFAULT = 5;
    private static final int MAX_SIMULTANEOUS_STREAMS_I9100 = 3;
    private static final int SOUND_PRIORITY = 1;
    private static final int SOUND_QUALITY = 5;
    private static final float SOUND_RATE = 1.0f;
    private static final String TAG = "Cocos2dxSound";
    private final Context mContext;
    private float mLeftVolume;
    private float mRightVolume;
    private Semaphore mSemaphore;
    private SoundPool mSoundPool;
    private int mStreamIdSyn;
    private final HashMap<String, ArrayList<Integer>> mPathStreamIDsMap = new HashMap<>();
    private final HashMap<String, Integer> mPathSoundIDMap = new HashMap<>();
    private final ArrayList<SoundInfoForLoadedCompleted> mEffecToPlayWhenLoadedArray = new ArrayList<>();

    /* loaded from: classes5.dex */
    public class OnLoadCompletedListener implements SoundPool.OnLoadCompleteListener {
        public OnLoadCompletedListener() {
        }

        @Override // android.media.SoundPool.OnLoadCompleteListener
        public void onLoadComplete(SoundPool soundPool, int i2, int i4) {
            if (i4 == 0) {
                Iterator it2 = Cocos2dxSound.this.mEffecToPlayWhenLoadedArray.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    SoundInfoForLoadedCompleted soundInfoForLoadedCompleted = (SoundInfoForLoadedCompleted) it2.next();
                    int i5 = soundInfoForLoadedCompleted.soundID;
                    if (i2 == i5) {
                        Cocos2dxSound cocos2dxSound = Cocos2dxSound.this;
                        cocos2dxSound.mStreamIdSyn = cocos2dxSound.doPlayEffect(soundInfoForLoadedCompleted.path, i5, soundInfoForLoadedCompleted.isLoop, soundInfoForLoadedCompleted.pitch, soundInfoForLoadedCompleted.pan, soundInfoForLoadedCompleted.gain);
                        Cocos2dxSound.this.mEffecToPlayWhenLoadedArray.remove(soundInfoForLoadedCompleted);
                        break;
                    }
                }
            } else {
                Cocos2dxSound.this.mStreamIdSyn = -1;
            }
            Cocos2dxSound.this.mSemaphore.release();
        }
    }

    /* loaded from: classes5.dex */
    public class SoundInfoForLoadedCompleted {
        public float gain;
        public boolean isLoop;
        public float pan;
        public String path;
        public float pitch;
        public int soundID;

        public SoundInfoForLoadedCompleted(String str, int i2, boolean z3, float f4, float f5, float f6) {
            this.path = str;
            this.soundID = i2;
            this.isLoop = z3;
            this.pitch = f4;
            this.pan = f5;
            this.gain = f6;
        }
    }

    public Cocos2dxSound(Context context) {
        this.mContext = context;
        initData();
    }

    private float clamp(float f4, float f5, float f6) {
        return Math.max(f5, Math.min(f4, f6));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int doPlayEffect(String str, int i2, boolean z3, float f4, float f5, float f6) {
        float clamp = this.mLeftVolume * f6 * (1.0f - clamp(f5, 0.0f, 1.0f));
        float clamp2 = this.mRightVolume * f6 * (1.0f - clamp(-f5, 0.0f, 1.0f));
        int play = this.mSoundPool.play(i2, clamp(clamp, 0.0f, 1.0f), clamp(clamp2, 0.0f, 1.0f), 1, z3 ? -1 : 0, clamp(f4 * 1.0f, 0.5f, 2.0f));
        ArrayList<Integer> arrayList = this.mPathStreamIDsMap.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.mPathStreamIDsMap.put(str, arrayList);
        }
        arrayList.add(Integer.valueOf(play));
        return play;
    }

    private void initData() {
        if (Cocos2dxHelper.getDeviceModel().indexOf("GT-I9100") != -1) {
            this.mSoundPool = new SoundPool(3, 3, 5);
        } else {
            this.mSoundPool = new SoundPool(5, 3, 5);
        }
        this.mSoundPool.setOnLoadCompleteListener(new OnLoadCompletedListener());
        this.mLeftVolume = 0.5f;
        this.mRightVolume = 0.5f;
        this.mSemaphore = new Semaphore(0, true);
    }

    public int createSoundIDFromAsset(String str) {
        int i2;
        try {
            if (str.startsWith(e.F0)) {
                i2 = this.mSoundPool.load(str, 0);
            } else {
                i2 = this.mSoundPool.load(this.mContext.getAssets().openFd(str), 0);
            }
        } catch (Exception e4) {
            StringBuilder sb = new StringBuilder();
            sb.append("error: ");
            sb.append(e4.getMessage());
            i2 = -1;
        }
        if (i2 == 0) {
            return -1;
        }
        return i2;
    }

    public void end() {
        this.mSoundPool.release();
        this.mPathStreamIDsMap.clear();
        this.mPathSoundIDMap.clear();
        this.mEffecToPlayWhenLoadedArray.clear();
        this.mLeftVolume = 0.5f;
        this.mRightVolume = 0.5f;
        initData();
    }

    public float getEffectsVolume() {
        return (this.mLeftVolume + this.mRightVolume) / 2.0f;
    }

    public void onEnterBackground() {
        this.mSoundPool.autoPause();
    }

    public void onEnterForeground() {
        this.mSoundPool.autoResume();
    }

    public void pauseAllEffects() {
        if (this.mPathStreamIDsMap.isEmpty()) {
            return;
        }
        for (Map.Entry<String, ArrayList<Integer>> entry : this.mPathStreamIDsMap.entrySet()) {
            Iterator<Integer> it2 = entry.getValue().iterator();
            while (it2.hasNext()) {
                this.mSoundPool.pause(it2.next().intValue());
            }
        }
    }

    public void pauseEffect(int i2) {
        this.mSoundPool.pause(i2);
    }

    public int playEffect(String str, boolean z3, float f4, float f5, float f6) {
        int i2;
        Integer num = this.mPathSoundIDMap.get(str);
        if (num != null) {
            return doPlayEffect(str, num.intValue(), z3, f4, f5, f6);
        }
        Integer valueOf = Integer.valueOf(preloadEffect(str));
        if (valueOf.intValue() == -1) {
            return -1;
        }
        synchronized (this.mSoundPool) {
            this.mEffecToPlayWhenLoadedArray.add(new SoundInfoForLoadedCompleted(str, valueOf.intValue(), z3, f4, f5, f6));
            try {
                this.mSemaphore.acquire();
                i2 = this.mStreamIdSyn;
            } catch (Exception unused) {
                return -1;
            }
        }
        return i2;
    }

    public int preloadEffect(String str) {
        if (CocosPlayClient.isEnabled() && !CocosPlayClient.isDemo()) {
            CocosPlayClient.updateAssets(str);
        }
        CocosPlayClient.notifyFileLoaded(str);
        Integer num = this.mPathSoundIDMap.get(str);
        if (num == null) {
            num = Integer.valueOf(createSoundIDFromAsset(str));
            if (num.intValue() != -1) {
                this.mPathSoundIDMap.put(str, num);
            }
        }
        return num.intValue();
    }

    public void resumeAllEffects() {
        if (this.mPathStreamIDsMap.isEmpty()) {
            return;
        }
        for (Map.Entry<String, ArrayList<Integer>> entry : this.mPathStreamIDsMap.entrySet()) {
            Iterator<Integer> it2 = entry.getValue().iterator();
            while (it2.hasNext()) {
                this.mSoundPool.resume(it2.next().intValue());
            }
        }
    }

    public void resumeEffect(int i2) {
        this.mSoundPool.resume(i2);
    }

    public void setEffectsVolume(float f4) {
        if (f4 < 0.0f) {
            f4 = 0.0f;
        }
        if (f4 > 1.0f) {
            f4 = 1.0f;
        }
        this.mRightVolume = f4;
        this.mLeftVolume = f4;
        if (this.mPathStreamIDsMap.isEmpty()) {
            return;
        }
        for (Map.Entry<String, ArrayList<Integer>> entry : this.mPathStreamIDsMap.entrySet()) {
            Iterator<Integer> it2 = entry.getValue().iterator();
            while (it2.hasNext()) {
                this.mSoundPool.setVolume(it2.next().intValue(), this.mLeftVolume, this.mRightVolume);
            }
        }
    }

    public void stopAllEffects() {
        if (!this.mPathStreamIDsMap.isEmpty()) {
            for (Map.Entry<String, ArrayList<Integer>> entry : this.mPathStreamIDsMap.entrySet()) {
                Iterator<Integer> it2 = entry.getValue().iterator();
                while (it2.hasNext()) {
                    this.mSoundPool.stop(it2.next().intValue());
                }
            }
        }
        this.mPathStreamIDsMap.clear();
    }

    public void stopEffect(int i2) {
        this.mSoundPool.stop(i2);
        for (String str : this.mPathStreamIDsMap.keySet()) {
            if (this.mPathStreamIDsMap.get(str).contains(Integer.valueOf(i2))) {
                this.mPathStreamIDsMap.get(str).remove(this.mPathStreamIDsMap.get(str).indexOf(Integer.valueOf(i2)));
                return;
            }
        }
    }

    public void unloadEffect(String str) {
        ArrayList<Integer> arrayList = this.mPathStreamIDsMap.get(str);
        if (arrayList != null) {
            Iterator<Integer> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                this.mSoundPool.stop(it2.next().intValue());
            }
        }
        this.mPathStreamIDsMap.remove(str);
        Integer num = this.mPathSoundIDMap.get(str);
        if (num != null) {
            this.mSoundPool.unload(num.intValue());
            this.mPathSoundIDMap.remove(str);
        }
    }
}
