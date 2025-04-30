package com.androidquery.auth;

import android.app.Activity;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.preference.PreferenceManager;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.androidquery.AQuery;
import com.androidquery.WebDialog;
import com.androidquery.callback.AbstractAjaxCallback;
import com.androidquery.callback.AjaxStatus;
import com.androidquery.util.AQUtility;
import java.net.HttpURLConnection;
import oauth.signpost.basic.DefaultOAuthConsumer;
import oauth.signpost.commonshttp.CommonsHttpOAuthConsumer;
import oauth.signpost.commonshttp.CommonsHttpOAuthProvider;
import org.apache.http.HttpRequest;
/* loaded from: classes2.dex */
public class TwitterHandle extends AccountHandle {
    private static final String CALLBACK_URI = "twitter://callback";
    private static final String CANCEL_URI = "twitter://cancel";
    private static final String OAUTH_ACCESS_TOKEN = "https://api.twitter.com/oauth/access_token";
    private static final String OAUTH_AUTHORIZE = "https://api.twitter.com/oauth/authorize";
    private static final String OAUTH_REQUEST_TOKEN = "https://api.twitter.com/oauth/request_token";
    private static final String TW_SECRET = "aq.tw.secret";
    private static final String TW_TOKEN = "aq.tw.token";
    private Activity act;
    private CommonsHttpOAuthConsumer consumer;
    private WebDialog dialog;
    private CommonsHttpOAuthProvider provider;
    private String secret;
    private String token = fetchToken(TW_TOKEN);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class Task extends AsyncTask<String, String, String> implements DialogInterface.OnCancelListener, Runnable {
        private AbstractAjaxCallback<?, ?> cb;

        private Task() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            TwitterHandle.this.failure();
        }

        @Override // java.lang.Runnable
        public void run() {
            TwitterHandle.this.auth(this.cb);
        }

        /* synthetic */ Task(TwitterHandle twitterHandle, Task task) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public String doInBackground(String... strArr) {
            try {
                return TwitterHandle.this.provider.retrieveRequestToken(TwitterHandle.this.consumer, TwitterHandle.CALLBACK_URI);
            } catch (Exception e4) {
                AQUtility.report(e4);
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            if (str == null) {
                TwitterHandle.this.failure();
                return;
            }
            TwitterHandle.this.dialog = new WebDialog(TwitterHandle.this.act, str, new TwWebViewClient(TwitterHandle.this, null));
            TwitterHandle.this.dialog.setOnCancelListener(this);
            TwitterHandle.this.show();
            TwitterHandle.this.dialog.load();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class Task2 extends AsyncTask<String, String, String> {
        private Task2() {
        }

        /* synthetic */ Task2(TwitterHandle twitterHandle, Task2 task2) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public String doInBackground(String... strArr) {
            try {
                TwitterHandle.this.provider.retrieveAccessToken(TwitterHandle.this.consumer, strArr[0]);
                return "";
            } catch (Exception e4) {
                AQUtility.report(e4);
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            if (str == null) {
                TwitterHandle.this.failure();
                TwitterHandle.this.authenticated(null, null);
                return;
            }
            TwitterHandle twitterHandle = TwitterHandle.this;
            twitterHandle.token = twitterHandle.consumer.getToken();
            TwitterHandle twitterHandle2 = TwitterHandle.this;
            twitterHandle2.secret = twitterHandle2.consumer.getTokenSecret();
            AQUtility.debug("token", TwitterHandle.this.token);
            AQUtility.debug("secret", TwitterHandle.this.secret);
            TwitterHandle twitterHandle3 = TwitterHandle.this;
            twitterHandle3.storeToken(TwitterHandle.TW_TOKEN, twitterHandle3.token, TwitterHandle.TW_SECRET, TwitterHandle.this.secret);
            TwitterHandle.this.dismiss();
            TwitterHandle twitterHandle4 = TwitterHandle.this;
            twitterHandle4.success(twitterHandle4.act);
            TwitterHandle twitterHandle5 = TwitterHandle.this;
            twitterHandle5.authenticated(twitterHandle5.secret, TwitterHandle.this.token);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class TwWebViewClient extends WebViewClient {
        private TwWebViewClient() {
        }

        private boolean checkDone(String str) {
            if (str.startsWith(TwitterHandle.CALLBACK_URI)) {
                String extract = TwitterHandle.this.extract(str, "oauth_verifier");
                TwitterHandle.this.dismiss();
                new Task2(TwitterHandle.this, null).execute(extract);
                return true;
            } else if (str.startsWith(TwitterHandle.CANCEL_URI)) {
                TwitterHandle.this.failure();
                return true;
            } else {
                return false;
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            AQUtility.debug("finished", str);
            super.onPageFinished(webView, str);
            TwitterHandle.this.show();
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            AQUtility.debug("started", str);
            if (checkDone(str)) {
                return;
            }
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i2, String str, String str2) {
            TwitterHandle.this.failure();
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return checkDone(str);
        }

        /* synthetic */ TwWebViewClient(TwitterHandle twitterHandle, TwWebViewClient twWebViewClient) {
            this();
        }
    }

    public TwitterHandle(Activity activity, String str, String str2) {
        this.act = activity;
        this.consumer = new CommonsHttpOAuthConsumer(str, str2);
        String fetchToken = fetchToken(TW_SECRET);
        this.secret = fetchToken;
        String str3 = this.token;
        if (str3 != null && fetchToken != null) {
            this.consumer.setTokenWithSecret(str3, fetchToken);
        }
        this.provider = new CommonsHttpOAuthProvider(OAUTH_REQUEST_TOKEN, OAUTH_ACCESS_TOKEN, OAUTH_AUTHORIZE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismiss() {
        if (this.dialog != null) {
            new AQuery(this.act).dismiss(this.dialog);
            this.dialog = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String extract(String str, String str2) {
        return Uri.parse(str).getQueryParameter(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void failure() {
        dismiss();
        failure(this.act, 401, "cancel");
    }

    private String fetchToken(String str) {
        return PreferenceManager.getDefaultSharedPreferences(this.act).getString(str, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void show() {
        if (this.dialog != null) {
            new AQuery(this.act).show(this.dialog);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void storeToken(String str, String str2, String str3, String str4) {
        PreferenceManager.getDefaultSharedPreferences(this.act).edit().putString(str, str2).putString(str3, str4).commit();
    }

    @Override // com.androidquery.auth.AccountHandle
    public void applyToken(AbstractAjaxCallback<?, ?> abstractAjaxCallback, HttpRequest httpRequest) {
        AQUtility.debug("apply token", abstractAjaxCallback.getUrl());
        try {
            this.consumer.sign(httpRequest);
        } catch (Exception e4) {
            AQUtility.report(e4);
        }
    }

    @Override // com.androidquery.auth.AccountHandle
    protected void auth() {
        new Task(this, null).execute(new String[0]);
    }

    public void authenticate(boolean z3) {
        String str;
        String str2;
        if (!z3 && (str = this.token) != null && (str2 = this.secret) != null) {
            authenticated(str2, str);
        } else {
            auth();
        }
    }

    protected void authenticated(String str, String str2) {
    }

    @Override // com.androidquery.auth.AccountHandle
    public boolean authenticated() {
        return (this.token == null || this.secret == null) ? false : true;
    }

    @Override // com.androidquery.auth.AccountHandle
    public boolean expired(AbstractAjaxCallback<?, ?> abstractAjaxCallback, AjaxStatus ajaxStatus) {
        int code = ajaxStatus.getCode();
        return code == 400 || code == 401;
    }

    public String getSecret() {
        return this.secret;
    }

    public String getToken() {
        return this.token;
    }

    @Override // com.androidquery.auth.AccountHandle
    public boolean reauth(AbstractAjaxCallback<?, ?> abstractAjaxCallback) {
        this.token = null;
        this.secret = null;
        storeToken(TW_TOKEN, null, TW_SECRET, null);
        new Task(this, null).cb = abstractAjaxCallback;
        AQUtility.post(abstractAjaxCallback);
        return false;
    }

    @Override // com.androidquery.auth.AccountHandle
    public void unauth() {
        this.token = null;
        this.secret = null;
        CookieSyncManager.createInstance(this.act);
        CookieManager.getInstance().removeAllCookie();
        storeToken(TW_TOKEN, null, TW_SECRET, null);
    }

    @Override // com.androidquery.auth.AccountHandle
    public void applyToken(AbstractAjaxCallback<?, ?> abstractAjaxCallback, HttpURLConnection httpURLConnection) {
        AQUtility.debug("apply token multipart", abstractAjaxCallback.getUrl());
        DefaultOAuthConsumer defaultOAuthConsumer = new DefaultOAuthConsumer(this.consumer.getConsumerKey(), this.consumer.getConsumerSecret());
        defaultOAuthConsumer.setTokenWithSecret(this.consumer.getToken(), this.consumer.getTokenSecret());
        try {
            defaultOAuthConsumer.sign(httpURLConnection);
        } catch (Exception e4) {
            AQUtility.report(e4);
        }
    }
}
