package com.androidquery.auth;

import android.content.Context;
import com.androidquery.callback.AbstractAjaxCallback;
import com.androidquery.callback.AjaxStatus;
import java.net.HttpURLConnection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import org.apache.http.HttpRequest;
/* loaded from: classes2.dex */
public abstract class AccountHandle {
    private LinkedHashSet<AbstractAjaxCallback<?, ?>> callbacks;

    public void applyToken(AbstractAjaxCallback<?, ?> abstractAjaxCallback, HttpURLConnection httpURLConnection) {
    }

    public void applyToken(AbstractAjaxCallback<?, ?> abstractAjaxCallback, HttpRequest httpRequest) {
    }

    protected abstract void auth();

    public synchronized void auth(AbstractAjaxCallback<?, ?> abstractAjaxCallback) {
        LinkedHashSet<AbstractAjaxCallback<?, ?>> linkedHashSet = this.callbacks;
        if (linkedHashSet == null) {
            LinkedHashSet<AbstractAjaxCallback<?, ?>> linkedHashSet2 = new LinkedHashSet<>();
            this.callbacks = linkedHashSet2;
            linkedHashSet2.add(abstractAjaxCallback);
            auth();
        } else {
            linkedHashSet.add(abstractAjaxCallback);
        }
    }

    public abstract boolean authenticated();

    public abstract boolean expired(AbstractAjaxCallback<?, ?> abstractAjaxCallback, AjaxStatus ajaxStatus);

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void failure(Context context, int i2, String str) {
        LinkedHashSet<AbstractAjaxCallback<?, ?>> linkedHashSet = this.callbacks;
        if (linkedHashSet != null) {
            Iterator<AbstractAjaxCallback<?, ?>> it2 = linkedHashSet.iterator();
            while (it2.hasNext()) {
                it2.next().failure(i2, str);
            }
            this.callbacks = null;
        }
    }

    public String getCacheUrl(String str) {
        return str;
    }

    public String getNetworkUrl(String str) {
        return str;
    }

    public abstract boolean reauth(AbstractAjaxCallback<?, ?> abstractAjaxCallback);

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void success(Context context) {
        LinkedHashSet<AbstractAjaxCallback<?, ?>> linkedHashSet = this.callbacks;
        if (linkedHashSet != null) {
            Iterator<AbstractAjaxCallback<?, ?>> it2 = linkedHashSet.iterator();
            while (it2.hasNext()) {
                it2.next().async(context);
            }
            this.callbacks = null;
        }
    }

    public void unauth() {
    }
}
