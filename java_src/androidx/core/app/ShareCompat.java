package androidx.core.app;

import android.app.Activity;
import android.content.ClipData;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.text.Html;
import android.text.Spanned;
import android.view.ActionProvider;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ShareActionProvider;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.StringRes;
import androidx.core.content.IntentCompat;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class ShareCompat {
    public static final String EXTRA_CALLING_ACTIVITY = "androidx.core.app.EXTRA_CALLING_ACTIVITY";
    public static final String EXTRA_CALLING_ACTIVITY_INTEROP = "android.support.v4.app.EXTRA_CALLING_ACTIVITY";
    public static final String EXTRA_CALLING_PACKAGE = "androidx.core.app.EXTRA_CALLING_PACKAGE";
    public static final String EXTRA_CALLING_PACKAGE_INTEROP = "android.support.v4.app.EXTRA_CALLING_PACKAGE";

    /* renamed from: a  reason: collision with root package name */
    private static final String f4092a = ".sharecompat_";

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(16)
    /* loaded from: classes.dex */
    public static class Api16Impl {
        private Api16Impl() {
        }

        static void a(@NonNull Intent intent, @NonNull ArrayList<Uri> arrayList) {
            ClipData clipData = new ClipData(null, new String[]{intent.getType()}, new ClipData.Item(intent.getCharSequenceExtra("android.intent.extra.TEXT"), intent.getStringExtra(IntentCompat.EXTRA_HTML_TEXT), null, arrayList.get(0)));
            int size = arrayList.size();
            for (int i2 = 1; i2 < size; i2++) {
                clipData.addItem(new ClipData.Item(arrayList.get(i2)));
            }
            intent.setClipData(clipData);
            intent.addFlags(1);
        }

        static void b(@NonNull Intent intent) {
            intent.setClipData(null);
            intent.setFlags(intent.getFlags() & (-2));
        }
    }

    /* loaded from: classes.dex */
    public static class IntentBuilder {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final Context f4093a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final Intent f4094b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private CharSequence f4095c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private ArrayList<String> f4096d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private ArrayList<String> f4097e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private ArrayList<String> f4098f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private ArrayList<Uri> f4099g;

        public IntentBuilder(@NonNull Context context) {
            Activity activity;
            this.f4093a = (Context) Preconditions.checkNotNull(context);
            Intent action = new Intent().setAction("android.intent.action.SEND");
            this.f4094b = action;
            action.putExtra(ShareCompat.EXTRA_CALLING_PACKAGE, context.getPackageName());
            action.putExtra(ShareCompat.EXTRA_CALLING_PACKAGE_INTEROP, context.getPackageName());
            action.addFlags(524288);
            while (true) {
                if (!(context instanceof ContextWrapper)) {
                    activity = null;
                    break;
                } else if (context instanceof Activity) {
                    activity = (Activity) context;
                    break;
                } else {
                    context = ((ContextWrapper) context).getBaseContext();
                }
            }
            if (activity != null) {
                ComponentName componentName = activity.getComponentName();
                this.f4094b.putExtra(ShareCompat.EXTRA_CALLING_ACTIVITY, componentName);
                this.f4094b.putExtra(ShareCompat.EXTRA_CALLING_ACTIVITY_INTEROP, componentName);
            }
        }

        private void a(String str, ArrayList<String> arrayList) {
            String[] stringArrayExtra = this.f4094b.getStringArrayExtra(str);
            int length = stringArrayExtra != null ? stringArrayExtra.length : 0;
            String[] strArr = new String[arrayList.size() + length];
            arrayList.toArray(strArr);
            if (stringArrayExtra != null) {
                System.arraycopy(stringArrayExtra, 0, strArr, arrayList.size(), length);
            }
            this.f4094b.putExtra(str, strArr);
        }

        private void b(@Nullable String str, @NonNull String[] strArr) {
            Intent intent = getIntent();
            String[] stringArrayExtra = intent.getStringArrayExtra(str);
            int length = stringArrayExtra != null ? stringArrayExtra.length : 0;
            String[] strArr2 = new String[strArr.length + length];
            if (stringArrayExtra != null) {
                System.arraycopy(stringArrayExtra, 0, strArr2, 0, length);
            }
            System.arraycopy(strArr, 0, strArr2, length, strArr.length);
            intent.putExtra(str, strArr2);
        }

        @NonNull
        @Deprecated
        public static IntentBuilder from(@NonNull Activity activity) {
            return new IntentBuilder(activity);
        }

        @NonNull
        public IntentBuilder addEmailBcc(@NonNull String str) {
            if (this.f4098f == null) {
                this.f4098f = new ArrayList<>();
            }
            this.f4098f.add(str);
            return this;
        }

        @NonNull
        public IntentBuilder addEmailCc(@NonNull String str) {
            if (this.f4097e == null) {
                this.f4097e = new ArrayList<>();
            }
            this.f4097e.add(str);
            return this;
        }

        @NonNull
        public IntentBuilder addEmailTo(@NonNull String str) {
            if (this.f4096d == null) {
                this.f4096d = new ArrayList<>();
            }
            this.f4096d.add(str);
            return this;
        }

        @NonNull
        public IntentBuilder addStream(@NonNull Uri uri) {
            if (this.f4099g == null) {
                this.f4099g = new ArrayList<>();
            }
            this.f4099g.add(uri);
            return this;
        }

        @NonNull
        public Intent createChooserIntent() {
            return Intent.createChooser(getIntent(), this.f4095c);
        }

        @NonNull
        Context getContext() {
            return this.f4093a;
        }

        @NonNull
        public Intent getIntent() {
            ArrayList<String> arrayList = this.f4096d;
            if (arrayList != null) {
                a("android.intent.extra.EMAIL", arrayList);
                this.f4096d = null;
            }
            ArrayList<String> arrayList2 = this.f4097e;
            if (arrayList2 != null) {
                a("android.intent.extra.CC", arrayList2);
                this.f4097e = null;
            }
            ArrayList<String> arrayList3 = this.f4098f;
            if (arrayList3 != null) {
                a("android.intent.extra.BCC", arrayList3);
                this.f4098f = null;
            }
            ArrayList<Uri> arrayList4 = this.f4099g;
            boolean z3 = true;
            if (!((arrayList4 == null || arrayList4.size() <= 1) ? false : false)) {
                this.f4094b.setAction("android.intent.action.SEND");
                ArrayList<Uri> arrayList5 = this.f4099g;
                if (arrayList5 != null && !arrayList5.isEmpty()) {
                    this.f4094b.putExtra("android.intent.extra.STREAM", this.f4099g.get(0));
                    if (Build.VERSION.SDK_INT >= 16) {
                        Api16Impl.a(this.f4094b, this.f4099g);
                    }
                } else {
                    this.f4094b.removeExtra("android.intent.extra.STREAM");
                    if (Build.VERSION.SDK_INT >= 16) {
                        Api16Impl.b(this.f4094b);
                    }
                }
            } else {
                this.f4094b.setAction("android.intent.action.SEND_MULTIPLE");
                this.f4094b.putParcelableArrayListExtra("android.intent.extra.STREAM", this.f4099g);
                if (Build.VERSION.SDK_INT >= 16) {
                    Api16Impl.a(this.f4094b, this.f4099g);
                }
            }
            return this.f4094b;
        }

        @NonNull
        public IntentBuilder setChooserTitle(@Nullable CharSequence charSequence) {
            this.f4095c = charSequence;
            return this;
        }

        @NonNull
        public IntentBuilder setEmailBcc(@Nullable String[] strArr) {
            this.f4094b.putExtra("android.intent.extra.BCC", strArr);
            return this;
        }

        @NonNull
        public IntentBuilder setEmailCc(@Nullable String[] strArr) {
            this.f4094b.putExtra("android.intent.extra.CC", strArr);
            return this;
        }

        @NonNull
        public IntentBuilder setEmailTo(@Nullable String[] strArr) {
            if (this.f4096d != null) {
                this.f4096d = null;
            }
            this.f4094b.putExtra("android.intent.extra.EMAIL", strArr);
            return this;
        }

        @NonNull
        public IntentBuilder setHtmlText(@Nullable String str) {
            this.f4094b.putExtra(IntentCompat.EXTRA_HTML_TEXT, str);
            if (!this.f4094b.hasExtra("android.intent.extra.TEXT")) {
                setText(Html.fromHtml(str));
            }
            return this;
        }

        @NonNull
        public IntentBuilder setStream(@Nullable Uri uri) {
            this.f4099g = null;
            if (uri != null) {
                addStream(uri);
            }
            return this;
        }

        @NonNull
        public IntentBuilder setSubject(@Nullable String str) {
            this.f4094b.putExtra("android.intent.extra.SUBJECT", str);
            return this;
        }

        @NonNull
        public IntentBuilder setText(@Nullable CharSequence charSequence) {
            this.f4094b.putExtra("android.intent.extra.TEXT", charSequence);
            return this;
        }

        @NonNull
        public IntentBuilder setType(@Nullable String str) {
            this.f4094b.setType(str);
            return this;
        }

        public void startChooser() {
            this.f4093a.startActivity(createChooserIntent());
        }

        @NonNull
        public IntentBuilder setChooserTitle(@StringRes int i2) {
            return setChooserTitle(this.f4093a.getText(i2));
        }

        @NonNull
        public IntentBuilder addEmailBcc(@NonNull String[] strArr) {
            b("android.intent.extra.BCC", strArr);
            return this;
        }

        @NonNull
        public IntentBuilder addEmailCc(@NonNull String[] strArr) {
            b("android.intent.extra.CC", strArr);
            return this;
        }

        @NonNull
        public IntentBuilder addEmailTo(@NonNull String[] strArr) {
            b("android.intent.extra.EMAIL", strArr);
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static class IntentReader {

        /* renamed from: f  reason: collision with root package name */
        private static final String f4100f = "IntentReader";
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final Context f4101a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final Intent f4102b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final String f4103c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private final ComponentName f4104d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private ArrayList<Uri> f4105e;

        public IntentReader(@NonNull Activity activity) {
            this((Context) Preconditions.checkNotNull(activity), activity.getIntent());
        }

        private static void a(StringBuilder sb, CharSequence charSequence, int i2, int i4) {
            while (i2 < i4) {
                char charAt = charSequence.charAt(i2);
                if (charAt == '<') {
                    sb.append("&lt;");
                } else if (charAt == '>') {
                    sb.append("&gt;");
                } else if (charAt == '&') {
                    sb.append("&amp;");
                } else if (charAt > '~' || charAt < ' ') {
                    sb.append("&#");
                    sb.append((int) charAt);
                    sb.append(";");
                } else if (charAt == ' ') {
                    while (true) {
                        int i5 = i2 + 1;
                        if (i5 >= i4 || charSequence.charAt(i5) != ' ') {
                            break;
                        }
                        sb.append("&nbsp;");
                        i2 = i5;
                    }
                    sb.append(' ');
                } else {
                    sb.append(charAt);
                }
                i2++;
            }
        }

        @NonNull
        @Deprecated
        public static IntentReader from(@NonNull Activity activity) {
            return new IntentReader(activity);
        }

        @Nullable
        public ComponentName getCallingActivity() {
            return this.f4104d;
        }

        @Nullable
        public Drawable getCallingActivityIcon() {
            if (this.f4104d == null) {
                return null;
            }
            try {
                return this.f4101a.getPackageManager().getActivityIcon(this.f4104d);
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }

        @Nullable
        public Drawable getCallingApplicationIcon() {
            if (this.f4103c == null) {
                return null;
            }
            try {
                return this.f4101a.getPackageManager().getApplicationIcon(this.f4103c);
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }

        @Nullable
        public CharSequence getCallingApplicationLabel() {
            if (this.f4103c == null) {
                return null;
            }
            PackageManager packageManager = this.f4101a.getPackageManager();
            try {
                return packageManager.getApplicationLabel(packageManager.getApplicationInfo(this.f4103c, 0));
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }

        @Nullable
        public String getCallingPackage() {
            return this.f4103c;
        }

        @Nullable
        public String[] getEmailBcc() {
            return this.f4102b.getStringArrayExtra("android.intent.extra.BCC");
        }

        @Nullable
        public String[] getEmailCc() {
            return this.f4102b.getStringArrayExtra("android.intent.extra.CC");
        }

        @Nullable
        public String[] getEmailTo() {
            return this.f4102b.getStringArrayExtra("android.intent.extra.EMAIL");
        }

        @Nullable
        public String getHtmlText() {
            String stringExtra = this.f4102b.getStringExtra(IntentCompat.EXTRA_HTML_TEXT);
            if (stringExtra == null) {
                CharSequence text = getText();
                if (text instanceof Spanned) {
                    return Html.toHtml((Spanned) text);
                }
                if (text != null) {
                    if (Build.VERSION.SDK_INT >= 16) {
                        return Html.escapeHtml(text);
                    }
                    StringBuilder sb = new StringBuilder();
                    a(sb, text, 0, text.length());
                    return sb.toString();
                }
                return stringExtra;
            }
            return stringExtra;
        }

        @Nullable
        public Uri getStream() {
            return (Uri) this.f4102b.getParcelableExtra("android.intent.extra.STREAM");
        }

        public int getStreamCount() {
            if (this.f4105e == null && isMultipleShare()) {
                this.f4105e = this.f4102b.getParcelableArrayListExtra("android.intent.extra.STREAM");
            }
            ArrayList<Uri> arrayList = this.f4105e;
            if (arrayList != null) {
                return arrayList.size();
            }
            return this.f4102b.hasExtra("android.intent.extra.STREAM") ? 1 : 0;
        }

        @Nullable
        public String getSubject() {
            return this.f4102b.getStringExtra("android.intent.extra.SUBJECT");
        }

        @Nullable
        public CharSequence getText() {
            return this.f4102b.getCharSequenceExtra("android.intent.extra.TEXT");
        }

        @Nullable
        public String getType() {
            return this.f4102b.getType();
        }

        public boolean isMultipleShare() {
            return "android.intent.action.SEND_MULTIPLE".equals(this.f4102b.getAction());
        }

        public boolean isShareIntent() {
            String action = this.f4102b.getAction();
            return "android.intent.action.SEND".equals(action) || "android.intent.action.SEND_MULTIPLE".equals(action);
        }

        public boolean isSingleShare() {
            return "android.intent.action.SEND".equals(this.f4102b.getAction());
        }

        public IntentReader(@NonNull Context context, @NonNull Intent intent) {
            this.f4101a = (Context) Preconditions.checkNotNull(context);
            this.f4102b = (Intent) Preconditions.checkNotNull(intent);
            this.f4103c = ShareCompat.b(intent);
            this.f4104d = ShareCompat.a(intent);
        }

        @Nullable
        public Uri getStream(int i2) {
            if (this.f4105e == null && isMultipleShare()) {
                this.f4105e = this.f4102b.getParcelableArrayListExtra("android.intent.extra.STREAM");
            }
            ArrayList<Uri> arrayList = this.f4105e;
            if (arrayList != null) {
                return arrayList.get(i2);
            }
            if (i2 == 0) {
                return (Uri) this.f4102b.getParcelableExtra("android.intent.extra.STREAM");
            }
            throw new IndexOutOfBoundsException("Stream items available: " + getStreamCount() + " index requested: " + i2);
        }
    }

    private ShareCompat() {
    }

    @Nullable
    static ComponentName a(@NonNull Intent intent) {
        ComponentName componentName = (ComponentName) intent.getParcelableExtra(EXTRA_CALLING_ACTIVITY);
        return componentName == null ? (ComponentName) intent.getParcelableExtra(EXTRA_CALLING_ACTIVITY_INTEROP) : componentName;
    }

    @Nullable
    static String b(@NonNull Intent intent) {
        String stringExtra = intent.getStringExtra(EXTRA_CALLING_PACKAGE);
        return stringExtra == null ? intent.getStringExtra(EXTRA_CALLING_PACKAGE_INTEROP) : stringExtra;
    }

    @Deprecated
    public static void configureMenuItem(@NonNull MenuItem menuItem, @NonNull IntentBuilder intentBuilder) {
        ShareActionProvider shareActionProvider;
        ActionProvider actionProvider = menuItem.getActionProvider();
        if (!(actionProvider instanceof ShareActionProvider)) {
            shareActionProvider = new ShareActionProvider(intentBuilder.getContext());
        } else {
            shareActionProvider = (ShareActionProvider) actionProvider;
        }
        shareActionProvider.setShareHistoryFileName(f4092a + intentBuilder.getContext().getClass().getName());
        shareActionProvider.setShareIntent(intentBuilder.getIntent());
        menuItem.setActionProvider(shareActionProvider);
        if (Build.VERSION.SDK_INT >= 16 || menuItem.hasSubMenu()) {
            return;
        }
        menuItem.setIntent(intentBuilder.createChooserIntent());
    }

    @Nullable
    public static ComponentName getCallingActivity(@NonNull Activity activity) {
        Intent intent = activity.getIntent();
        ComponentName callingActivity = activity.getCallingActivity();
        return callingActivity == null ? a(intent) : callingActivity;
    }

    @Nullable
    public static String getCallingPackage(@NonNull Activity activity) {
        Intent intent = activity.getIntent();
        String callingPackage = activity.getCallingPackage();
        return (callingPackage != null || intent == null) ? callingPackage : b(intent);
    }

    @Deprecated
    public static void configureMenuItem(@NonNull Menu menu, @IdRes int i2, @NonNull IntentBuilder intentBuilder) {
        MenuItem findItem = menu.findItem(i2);
        if (findItem != null) {
            configureMenuItem(findItem, intentBuilder);
            return;
        }
        throw new IllegalArgumentException("Could not find menu item with id " + i2 + " in the supplied menu");
    }
}
