package com.papa91.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.ref.SoftReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import net.lingala.zip4j.util.e;
/* loaded from: classes4.dex */
public class LoaderImpl {
    private boolean cache2FileFlag = false;
    private String cachedDir;
    private Map<String, SoftReference<Bitmap>> imageCache;

    public LoaderImpl(Map<String, SoftReference<Bitmap>> map) {
        this.imageCache = map;
    }

    private Bitmap getBitmapFromFile(String str) {
        String mD5Str = getMD5Str(str);
        if (mD5Str == null) {
            return null;
        }
        try {
            return BitmapFactory.decodeStream(new FileInputStream(this.cachedDir + e.F0 + mD5Str));
        } catch (FileNotFoundException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    private static String getMD5Str(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.reset();
            messageDigest.update(str.getBytes("UTF-8"));
            byte[] digest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer();
            for (int i2 = 0; i2 < digest.length; i2++) {
                if (Integer.toHexString(digest[i2] & 255).length() == 1) {
                    stringBuffer.append("0");
                    stringBuffer.append(Integer.toHexString(digest[i2] & 255));
                } else {
                    stringBuffer.append(Integer.toHexString(digest[i2] & 255));
                }
            }
            return stringBuffer.toString();
        } catch (UnsupportedEncodingException e4) {
            e4.printStackTrace();
            return null;
        } catch (NoSuchAlgorithmException unused) {
            System.out.println("NoSuchAlgorithmException caught!");
            return null;
        }
    }

    public Bitmap getBitmapFromMemory(String str) {
        if (this.imageCache.containsKey(str)) {
            synchronized (this.imageCache) {
                SoftReference<Bitmap> softReference = this.imageCache.get(str);
                if (softReference != null) {
                    return softReference.get();
                }
            }
        }
        if (this.cache2FileFlag) {
            Bitmap bitmapFromFile = getBitmapFromFile(str);
            if (bitmapFromFile != null) {
                this.imageCache.put(str, new SoftReference<>(bitmapFromFile));
                return bitmapFromFile;
            }
            return bitmapFromFile;
        }
        return null;
    }

    public Bitmap getBitmapFromUrl(String str, boolean z3) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            InputStream inputStream = httpURLConnection.getInputStream();
            Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
            if (z3) {
                this.imageCache.put(str, new SoftReference<>(decodeStream));
                if (this.cache2FileFlag) {
                    String mD5Str = getMD5Str(str);
                    decodeStream.compress(Bitmap.CompressFormat.PNG, 100, new FileOutputStream(this.cachedDir + e.F0 + mD5Str));
                }
            }
            inputStream.close();
            httpURLConnection.disconnect();
            return decodeStream;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public void setCache2File(boolean z3) {
        this.cache2FileFlag = z3;
    }

    public void setCachedDir(String str) {
        this.cachedDir = str;
    }
}
