package androidx.core.app;

import android.app.RemoteInput;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public final class RemoteInput {
    public static final int EDIT_CHOICES_BEFORE_SENDING_AUTO = 0;
    public static final int EDIT_CHOICES_BEFORE_SENDING_DISABLED = 1;
    public static final int EDIT_CHOICES_BEFORE_SENDING_ENABLED = 2;
    public static final String EXTRA_RESULTS_DATA = "android.remoteinput.resultsData";
    public static final String RESULTS_CLIP_LABEL = "android.remoteinput.results";
    public static final int SOURCE_CHOICE = 1;
    public static final int SOURCE_FREE_FORM_INPUT = 0;

    /* renamed from: h  reason: collision with root package name */
    private static final String f4075h = "RemoteInput";

    /* renamed from: i  reason: collision with root package name */
    private static final String f4076i = "android.remoteinput.dataTypeResultsData";

    /* renamed from: j  reason: collision with root package name */
    private static final String f4077j = "android.remoteinput.resultsSource";

    /* renamed from: a  reason: collision with root package name */
    private final String f4078a;

    /* renamed from: b  reason: collision with root package name */
    private final CharSequence f4079b;

    /* renamed from: c  reason: collision with root package name */
    private final CharSequence[] f4080c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f4081d;

    /* renamed from: e  reason: collision with root package name */
    private final int f4082e;

    /* renamed from: f  reason: collision with root package name */
    private final Bundle f4083f;

    /* renamed from: g  reason: collision with root package name */
    private final Set<String> f4084g;

    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        private final String f4085a;

        /* renamed from: d  reason: collision with root package name */
        private CharSequence f4088d;

        /* renamed from: e  reason: collision with root package name */
        private CharSequence[] f4089e;

        /* renamed from: b  reason: collision with root package name */
        private final Set<String> f4086b = new HashSet();

        /* renamed from: c  reason: collision with root package name */
        private final Bundle f4087c = new Bundle();

        /* renamed from: f  reason: collision with root package name */
        private boolean f4090f = true;

        /* renamed from: g  reason: collision with root package name */
        private int f4091g = 0;

        public Builder(@NonNull String str) {
            if (str != null) {
                this.f4085a = str;
                return;
            }
            throw new IllegalArgumentException("Result key can't be null");
        }

        @NonNull
        public Builder addExtras(@NonNull Bundle bundle) {
            if (bundle != null) {
                this.f4087c.putAll(bundle);
            }
            return this;
        }

        @NonNull
        public RemoteInput build() {
            return new RemoteInput(this.f4085a, this.f4088d, this.f4089e, this.f4090f, this.f4091g, this.f4087c, this.f4086b);
        }

        @NonNull
        public Bundle getExtras() {
            return this.f4087c;
        }

        @NonNull
        public Builder setAllowDataType(@NonNull String str, boolean z3) {
            if (z3) {
                this.f4086b.add(str);
            } else {
                this.f4086b.remove(str);
            }
            return this;
        }

        @NonNull
        public Builder setAllowFreeFormInput(boolean z3) {
            this.f4090f = z3;
            return this;
        }

        @NonNull
        public Builder setChoices(@Nullable CharSequence[] charSequenceArr) {
            this.f4089e = charSequenceArr;
            return this;
        }

        @NonNull
        public Builder setEditChoicesBeforeSending(int i2) {
            this.f4091g = i2;
            return this;
        }

        @NonNull
        public Builder setLabel(@Nullable CharSequence charSequence) {
            this.f4088d = charSequence;
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface EditChoicesBeforeSending {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface Source {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RemoteInput(String str, CharSequence charSequence, CharSequence[] charSequenceArr, boolean z3, int i2, Bundle bundle, Set<String> set) {
        this.f4078a = str;
        this.f4079b = charSequence;
        this.f4080c = charSequenceArr;
        this.f4081d = z3;
        this.f4082e = i2;
        this.f4083f = bundle;
        this.f4084g = set;
        if (getEditChoicesBeforeSending() == 2 && !getAllowFreeFormInput()) {
            throw new IllegalArgumentException("setEditChoicesBeforeSending requires setAllowFreeFormInput");
        }
    }

    @RequiresApi(20)
    static android.app.RemoteInput a(RemoteInput remoteInput) {
        Set<String> allowedDataTypes;
        RemoteInput.Builder addExtras = new RemoteInput.Builder(remoteInput.getResultKey()).setLabel(remoteInput.getLabel()).setChoices(remoteInput.getChoices()).setAllowFreeFormInput(remoteInput.getAllowFreeFormInput()).addExtras(remoteInput.getExtras());
        if (Build.VERSION.SDK_INT >= 26 && (allowedDataTypes = remoteInput.getAllowedDataTypes()) != null) {
            for (String str : allowedDataTypes) {
                addExtras.setAllowDataType(str, true);
            }
        }
        if (Build.VERSION.SDK_INT >= 29) {
            addExtras.setEditChoicesBeforeSending(remoteInput.getEditChoicesBeforeSending());
        }
        return addExtras.build();
    }

    public static void addDataResultToIntent(RemoteInput remoteInput, Intent intent, Map<String, Uri> map) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            android.app.RemoteInput.addDataResultToIntent(a(remoteInput), intent, map);
        } else if (i2 >= 16) {
            Intent d4 = d(intent);
            if (d4 == null) {
                d4 = new Intent();
            }
            for (Map.Entry<String, Uri> entry : map.entrySet()) {
                String key = entry.getKey();
                Uri value = entry.getValue();
                if (key != null) {
                    Bundle bundleExtra = d4.getBundleExtra(e(key));
                    if (bundleExtra == null) {
                        bundleExtra = new Bundle();
                    }
                    bundleExtra.putString(remoteInput.getResultKey(), value.toString());
                    d4.putExtra(e(key), bundleExtra);
                }
            }
            intent.setClipData(ClipData.newIntent(RESULTS_CLIP_LABEL, d4));
        }
    }

    public static void addResultsToIntent(RemoteInput[] remoteInputArr, Intent intent, Bundle bundle) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            android.app.RemoteInput.addResultsToIntent(b(remoteInputArr), intent, bundle);
            return;
        }
        if (i2 >= 20) {
            Bundle resultsFromIntent = getResultsFromIntent(intent);
            int resultsSource = getResultsSource(intent);
            if (resultsFromIntent != null) {
                resultsFromIntent.putAll(bundle);
                bundle = resultsFromIntent;
            }
            for (RemoteInput remoteInput : remoteInputArr) {
                Map<String, Uri> dataResultsFromIntent = getDataResultsFromIntent(intent, remoteInput.getResultKey());
                android.app.RemoteInput.addResultsToIntent(b(new RemoteInput[]{remoteInput}), intent, bundle);
                if (dataResultsFromIntent != null) {
                    addDataResultToIntent(remoteInput, intent, dataResultsFromIntent);
                }
            }
            setResultsSource(intent, resultsSource);
        } else if (i2 >= 16) {
            Intent d4 = d(intent);
            if (d4 == null) {
                d4 = new Intent();
            }
            Bundle bundleExtra = d4.getBundleExtra(EXTRA_RESULTS_DATA);
            if (bundleExtra == null) {
                bundleExtra = new Bundle();
            }
            for (RemoteInput remoteInput2 : remoteInputArr) {
                Object obj = bundle.get(remoteInput2.getResultKey());
                if (obj instanceof CharSequence) {
                    bundleExtra.putCharSequence(remoteInput2.getResultKey(), (CharSequence) obj);
                }
            }
            d4.putExtra(EXTRA_RESULTS_DATA, bundleExtra);
            intent.setClipData(ClipData.newIntent(RESULTS_CLIP_LABEL, d4));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(20)
    public static android.app.RemoteInput[] b(RemoteInput[] remoteInputArr) {
        if (remoteInputArr == null) {
            return null;
        }
        android.app.RemoteInput[] remoteInputArr2 = new android.app.RemoteInput[remoteInputArr.length];
        for (int i2 = 0; i2 < remoteInputArr.length; i2++) {
            remoteInputArr2[i2] = a(remoteInputArr[i2]);
        }
        return remoteInputArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(20)
    public static RemoteInput c(android.app.RemoteInput remoteInput) {
        Set<String> allowedDataTypes;
        Builder addExtras = new Builder(remoteInput.getResultKey()).setLabel(remoteInput.getLabel()).setChoices(remoteInput.getChoices()).setAllowFreeFormInput(remoteInput.getAllowFreeFormInput()).addExtras(remoteInput.getExtras());
        if (Build.VERSION.SDK_INT >= 26 && (allowedDataTypes = remoteInput.getAllowedDataTypes()) != null) {
            for (String str : allowedDataTypes) {
                addExtras.setAllowDataType(str, true);
            }
        }
        if (Build.VERSION.SDK_INT >= 29) {
            addExtras.setEditChoicesBeforeSending(remoteInput.getEditChoicesBeforeSending());
        }
        return addExtras.build();
    }

    @RequiresApi(16)
    private static Intent d(Intent intent) {
        ClipData clipData = intent.getClipData();
        if (clipData == null) {
            return null;
        }
        ClipDescription description = clipData.getDescription();
        if (description.hasMimeType("text/vnd.android.intent") && description.getLabel().toString().contentEquals(RESULTS_CLIP_LABEL)) {
            return clipData.getItemAt(0).getIntent();
        }
        return null;
    }

    private static String e(String str) {
        return f4076i + str;
    }

    public static Map<String, Uri> getDataResultsFromIntent(Intent intent, String str) {
        Intent d4;
        String string;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            return android.app.RemoteInput.getDataResultsFromIntent(intent, str);
        }
        if (i2 < 16 || (d4 = d(intent)) == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (String str2 : d4.getExtras().keySet()) {
            if (str2.startsWith(f4076i)) {
                String substring = str2.substring(39);
                if (!substring.isEmpty() && (string = d4.getBundleExtra(str2).getString(str)) != null && !string.isEmpty()) {
                    hashMap.put(substring, Uri.parse(string));
                }
            }
        }
        if (hashMap.isEmpty()) {
            return null;
        }
        return hashMap;
    }

    public static Bundle getResultsFromIntent(Intent intent) {
        Intent d4;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 20) {
            return android.app.RemoteInput.getResultsFromIntent(intent);
        }
        if (i2 < 16 || (d4 = d(intent)) == null) {
            return null;
        }
        return (Bundle) d4.getExtras().getParcelable(EXTRA_RESULTS_DATA);
    }

    public static int getResultsSource(@NonNull Intent intent) {
        Intent d4;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            return android.app.RemoteInput.getResultsSource(intent);
        }
        if (i2 < 16 || (d4 = d(intent)) == null) {
            return 0;
        }
        return d4.getExtras().getInt(f4077j, 0);
    }

    public static void setResultsSource(@NonNull Intent intent, int i2) {
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 28) {
            android.app.RemoteInput.setResultsSource(intent, i2);
        } else if (i4 >= 16) {
            Intent d4 = d(intent);
            if (d4 == null) {
                d4 = new Intent();
            }
            d4.putExtra(f4077j, i2);
            intent.setClipData(ClipData.newIntent(RESULTS_CLIP_LABEL, d4));
        }
    }

    public boolean getAllowFreeFormInput() {
        return this.f4081d;
    }

    public Set<String> getAllowedDataTypes() {
        return this.f4084g;
    }

    public CharSequence[] getChoices() {
        return this.f4080c;
    }

    public int getEditChoicesBeforeSending() {
        return this.f4082e;
    }

    public Bundle getExtras() {
        return this.f4083f;
    }

    public CharSequence getLabel() {
        return this.f4079b;
    }

    public String getResultKey() {
        return this.f4078a;
    }

    public boolean isDataOnly() {
        return (getAllowFreeFormInput() || (getChoices() != null && getChoices().length != 0) || getAllowedDataTypes() == null || getAllowedDataTypes().isEmpty()) ? false : true;
    }
}
