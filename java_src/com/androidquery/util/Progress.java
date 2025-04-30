package com.androidquery.util;

import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.view.View;
import android.widget.ProgressBar;
import com.androidquery.AQuery;
/* loaded from: classes2.dex */
public class Progress implements Runnable {
    private Activity act;
    private int bytes;
    private int current;
    private ProgressBar pb;
    private ProgressDialog pd;
    private boolean unknown;
    private String url;
    private View view;

    public Progress(Object obj) {
        if (obj instanceof ProgressBar) {
            this.pb = (ProgressBar) obj;
        } else if (obj instanceof ProgressDialog) {
            this.pd = (ProgressDialog) obj;
        } else if (obj instanceof Activity) {
            this.act = (Activity) obj;
        } else if (obj instanceof View) {
            this.view = (View) obj;
        }
    }

    private void dismiss(String str) {
        if (this.pd != null) {
            new AQuery(this.pd.getContext()).dismiss(this.pd);
        }
        Activity activity = this.act;
        if (activity != null) {
            activity.setProgressBarIndeterminateVisibility(false);
            this.act.setProgressBarVisibility(false);
        }
        ProgressBar progressBar = this.pb;
        if (progressBar != null) {
            progressBar.setTag(Constants.TAG_URL, str);
            this.pb.setVisibility(0);
        }
        View view = this.pb;
        if (view == null) {
            view = this.view;
        }
        if (view != null) {
            Object tag = view.getTag(Constants.TAG_URL);
            if (tag == null || tag.equals(str)) {
                view.setTag(Constants.TAG_URL, null);
                ProgressBar progressBar2 = this.pb;
                if (progressBar2 == null || !progressBar2.isIndeterminate()) {
                    return;
                }
                view.setVisibility(8);
            }
        }
    }

    private void showProgress(Object obj, String str, boolean z3) {
        if (obj != null) {
            if (obj instanceof View) {
                View view = (View) obj;
                ProgressBar progressBar = obj instanceof ProgressBar ? (ProgressBar) obj : null;
                if (z3) {
                    view.setTag(Constants.TAG_URL, str);
                    view.setVisibility(0);
                    if (progressBar != null) {
                        progressBar.setProgress(0);
                        progressBar.setMax(100);
                        return;
                    }
                    return;
                }
                Object tag = view.getTag(Constants.TAG_URL);
                if (tag == null || tag.equals(str)) {
                    view.setTag(Constants.TAG_URL, null);
                    if (progressBar == null || !progressBar.isIndeterminate()) {
                        return;
                    }
                    view.setVisibility(8);
                }
            } else if (obj instanceof Dialog) {
                Dialog dialog = (Dialog) obj;
                AQuery aQuery = new AQuery(dialog.getContext());
                if (z3) {
                    aQuery.show(dialog);
                } else {
                    aQuery.dismiss(dialog);
                }
            } else if (obj instanceof Activity) {
                Activity activity = (Activity) obj;
                activity.setProgressBarIndeterminateVisibility(z3);
                activity.setProgressBarVisibility(z3);
                if (z3) {
                    activity.setProgress(0);
                }
            }
        }
    }

    public void done() {
        ProgressBar progressBar = this.pb;
        if (progressBar != null) {
            progressBar.setProgress(progressBar.getMax());
        }
        ProgressDialog progressDialog = this.pd;
        if (progressDialog != null) {
            progressDialog.setProgress(progressDialog.getMax());
        }
        Activity activity = this.act;
        if (activity != null) {
            activity.setProgress(9999);
        }
    }

    public void hide(String str) {
        if (AQUtility.isUIThread()) {
            dismiss(str);
            return;
        }
        this.url = str;
        AQUtility.post(this);
    }

    public void increment(int i2) {
        int i4;
        ProgressBar progressBar = this.pb;
        if (progressBar != null) {
            progressBar.incrementProgressBy(this.unknown ? 1 : i2);
        }
        ProgressDialog progressDialog = this.pd;
        if (progressDialog != null) {
            progressDialog.incrementProgressBy(this.unknown ? 1 : i2);
        }
        Activity activity = this.act;
        if (activity != null) {
            if (this.unknown) {
                i4 = this.current;
                this.current = i4 + 1;
            } else {
                int i5 = this.current + i2;
                this.current = i5;
                i4 = (i5 * 10000) / this.bytes;
            }
            if (i4 > 9999) {
                i4 = 9999;
            }
            activity.setProgress(i4);
        }
    }

    public void reset() {
        ProgressBar progressBar = this.pb;
        if (progressBar != null) {
            progressBar.setProgress(0);
            this.pb.setMax(10000);
        }
        ProgressDialog progressDialog = this.pd;
        if (progressDialog != null) {
            progressDialog.setProgress(0);
            this.pd.setMax(10000);
        }
        Activity activity = this.act;
        if (activity != null) {
            activity.setProgress(0);
        }
        this.unknown = false;
        this.current = 0;
        this.bytes = 10000;
    }

    @Override // java.lang.Runnable
    public void run() {
        dismiss(this.url);
    }

    public void setBytes(int i2) {
        if (i2 <= 0) {
            this.unknown = true;
            i2 = 10000;
        }
        this.bytes = i2;
        ProgressBar progressBar = this.pb;
        if (progressBar != null) {
            progressBar.setProgress(0);
            this.pb.setMax(i2);
        }
        ProgressDialog progressDialog = this.pd;
        if (progressDialog != null) {
            progressDialog.setProgress(0);
            this.pd.setMax(i2);
        }
    }

    public void show(String str) {
        reset();
        if (this.pd != null) {
            new AQuery(this.pd.getContext()).show(this.pd);
        }
        Activity activity = this.act;
        if (activity != null) {
            activity.setProgressBarIndeterminateVisibility(true);
            this.act.setProgressBarVisibility(true);
        }
        ProgressBar progressBar = this.pb;
        if (progressBar != null) {
            progressBar.setTag(Constants.TAG_URL, str);
            this.pb.setVisibility(0);
        }
        View view = this.view;
        if (view != null) {
            view.setTag(Constants.TAG_URL, str);
            this.view.setVisibility(0);
        }
    }
}
