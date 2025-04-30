package com.switfpass.pay.thread;
/* loaded from: classes4.dex */
public class e {
    public e() {
        onPreExecute();
    }

    public void onError(Object obj) {
        onPostExecute();
    }

    public void onPostExecute() {
    }

    public void onPreExecute() {
    }

    public void onProgress(int i2) {
    }

    public void onSucceed(Object obj) {
        onPostExecute();
    }
}
