package androidx.core.view;

import android.content.ClipData;
import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Pair;
import android.view.ContentInfo;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final class ContentInfoCompat {
    public static final int FLAG_CONVERT_TO_PLAIN_TEXT = 1;
    public static final int SOURCE_APP = 0;
    public static final int SOURCE_AUTOFILL = 4;
    public static final int SOURCE_CLIPBOARD = 1;
    public static final int SOURCE_DRAG_AND_DROP = 3;
    public static final int SOURCE_INPUT_METHOD = 2;
    public static final int SOURCE_PROCESS_TEXT = 5;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Compat f4731a;

    @RequiresApi(31)
    /* loaded from: classes.dex */
    private static final class Api31Impl {
        private Api31Impl() {
        }

        @NonNull
        @DoNotInline
        public static Pair<ContentInfo, ContentInfo> partition(@NonNull ContentInfo contentInfo, @NonNull final Predicate<ClipData.Item> predicate) {
            ClipData clip = contentInfo.getClip();
            if (clip.getItemCount() == 1) {
                boolean test2 = predicate.test(clip.getItemAt(0));
                ContentInfo contentInfo2 = test2 ? contentInfo : null;
                if (test2) {
                    contentInfo = null;
                }
                return Pair.create(contentInfo2, contentInfo);
            }
            Objects.requireNonNull(predicate);
            Pair<ClipData, ClipData> c4 = ContentInfoCompat.c(clip, new androidx.core.util.Predicate() { // from class: androidx.core.view.a
                @Override // androidx.core.util.Predicate
                public final boolean test(Object obj) {
                    return predicate.test((ClipData.Item) obj);
                }
            });
            if (c4.first == null) {
                return Pair.create(null, contentInfo);
            }
            if (c4.second == null) {
                return Pair.create(contentInfo, null);
            }
            return Pair.create(new ContentInfo.Builder(contentInfo).setClip((ClipData) c4.first).build(), new ContentInfo.Builder(contentInfo).setClip((ClipData) c4.second).build());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface BuilderCompat {
        @NonNull
        ContentInfoCompat build();

        void setClip(@NonNull ClipData clipData);

        void setExtras(@Nullable Bundle bundle);

        void setFlags(int i2);

        void setLinkUri(@Nullable Uri uri);

        void setSource(int i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface Compat {
        @NonNull
        ClipData getClip();

        @Nullable
        Bundle getExtras();

        int getFlags();

        @Nullable
        Uri getLinkUri();

        int getSource();

        @Nullable
        ContentInfo getWrapped();
    }

    /* loaded from: classes.dex */
    private static final class Compat31Impl implements Compat {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final ContentInfo f4739a;

        Compat31Impl(@NonNull ContentInfo contentInfo) {
            this.f4739a = (ContentInfo) Preconditions.checkNotNull(contentInfo);
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        @NonNull
        public ClipData getClip() {
            return this.f4739a.getClip();
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        @Nullable
        public Bundle getExtras() {
            return this.f4739a.getExtras();
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public int getFlags() {
            return this.f4739a.getFlags();
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        @Nullable
        public Uri getLinkUri() {
            return this.f4739a.getLinkUri();
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public int getSource() {
            return this.f4739a.getSource();
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        @NonNull
        public ContentInfo getWrapped() {
            return this.f4739a;
        }

        @NonNull
        public String toString() {
            return "ContentInfoCompat{" + this.f4739a + "}";
        }
    }

    /* loaded from: classes.dex */
    private static final class CompatImpl implements Compat {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final ClipData f4740a;

        /* renamed from: b  reason: collision with root package name */
        private final int f4741b;

        /* renamed from: c  reason: collision with root package name */
        private final int f4742c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private final Uri f4743d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private final Bundle f4744e;

        CompatImpl(BuilderCompatImpl builderCompatImpl) {
            this.f4740a = (ClipData) Preconditions.checkNotNull(builderCompatImpl.f4734a);
            this.f4741b = Preconditions.checkArgumentInRange(builderCompatImpl.f4735b, 0, 5, "source");
            this.f4742c = Preconditions.checkFlagsArgument(builderCompatImpl.f4736c, 1);
            this.f4743d = builderCompatImpl.f4737d;
            this.f4744e = builderCompatImpl.f4738e;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        @NonNull
        public ClipData getClip() {
            return this.f4740a;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        @Nullable
        public Bundle getExtras() {
            return this.f4744e;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public int getFlags() {
            return this.f4742c;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        @Nullable
        public Uri getLinkUri() {
            return this.f4743d;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public int getSource() {
            return this.f4741b;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        @Nullable
        public ContentInfo getWrapped() {
            return null;
        }

        @NonNull
        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append("ContentInfoCompat{clip=");
            sb.append(this.f4740a.getDescription());
            sb.append(", source=");
            sb.append(ContentInfoCompat.d(this.f4741b));
            sb.append(", flags=");
            sb.append(ContentInfoCompat.b(this.f4742c));
            if (this.f4743d == null) {
                str = "";
            } else {
                str = ", hasLinkUri(" + this.f4743d.toString().length() + ")";
            }
            sb.append(str);
            sb.append(this.f4744e != null ? ", hasExtras" : "");
            sb.append("}");
            return sb.toString();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface Flags {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface Source {
    }

    ContentInfoCompat(@NonNull Compat compat) {
        this.f4731a = compat;
    }

    @NonNull
    static ClipData a(@NonNull ClipDescription clipDescription, @NonNull List<ClipData.Item> list) {
        ClipData clipData = new ClipData(new ClipDescription(clipDescription), list.get(0));
        for (int i2 = 1; i2 < list.size(); i2++) {
            clipData.addItem(list.get(i2));
        }
        return clipData;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    static String b(int i2) {
        return (i2 & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i2);
    }

    @NonNull
    static Pair<ClipData, ClipData> c(@NonNull ClipData clipData, @NonNull androidx.core.util.Predicate<ClipData.Item> predicate) {
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        for (int i2 = 0; i2 < clipData.getItemCount(); i2++) {
            ClipData.Item itemAt = clipData.getItemAt(i2);
            if (predicate.test(itemAt)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(itemAt);
            } else {
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                }
                arrayList2.add(itemAt);
            }
        }
        if (arrayList == null) {
            return Pair.create(null, clipData);
        }
        if (arrayList2 == null) {
            return Pair.create(clipData, null);
        }
        return Pair.create(a(clipData.getDescription(), arrayList), a(clipData.getDescription(), arrayList2));
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    static String d(int i2) {
        return i2 != 0 ? i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? i2 != 5 ? String.valueOf(i2) : "SOURCE_PROCESS_TEXT" : "SOURCE_AUTOFILL" : "SOURCE_DRAG_AND_DROP" : "SOURCE_INPUT_METHOD" : "SOURCE_CLIPBOARD" : "SOURCE_APP";
    }

    @NonNull
    @RequiresApi(31)
    public static ContentInfoCompat toContentInfoCompat(@NonNull ContentInfo contentInfo) {
        return new ContentInfoCompat(new Compat31Impl(contentInfo));
    }

    @NonNull
    public ClipData getClip() {
        return this.f4731a.getClip();
    }

    @Nullable
    public Bundle getExtras() {
        return this.f4731a.getExtras();
    }

    public int getFlags() {
        return this.f4731a.getFlags();
    }

    @Nullable
    public Uri getLinkUri() {
        return this.f4731a.getLinkUri();
    }

    public int getSource() {
        return this.f4731a.getSource();
    }

    @NonNull
    public Pair<ContentInfoCompat, ContentInfoCompat> partition(@NonNull androidx.core.util.Predicate<ClipData.Item> predicate) {
        ClipData clip = this.f4731a.getClip();
        if (clip.getItemCount() == 1) {
            boolean test2 = predicate.test(clip.getItemAt(0));
            return Pair.create(test2 ? this : null, test2 ? null : this);
        }
        Pair<ClipData, ClipData> c4 = c(clip, predicate);
        if (c4.first == null) {
            return Pair.create(null, this);
        }
        if (c4.second == null) {
            return Pair.create(this, null);
        }
        return Pair.create(new Builder(this).setClip((ClipData) c4.first).build(), new Builder(this).setClip((ClipData) c4.second).build());
    }

    @NonNull
    @RequiresApi(31)
    public ContentInfo toContentInfo() {
        return this.f4731a.getWrapped();
    }

    @NonNull
    public String toString() {
        return this.f4731a.toString();
    }

    @RequiresApi(31)
    /* loaded from: classes.dex */
    private static final class BuilderCompat31Impl implements BuilderCompat {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final ContentInfo.Builder f4733a;

        BuilderCompat31Impl(@NonNull ClipData clipData, int i2) {
            this.f4733a = new ContentInfo.Builder(clipData, i2);
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        @NonNull
        public ContentInfoCompat build() {
            return new ContentInfoCompat(new Compat31Impl(this.f4733a.build()));
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public void setClip(@NonNull ClipData clipData) {
            this.f4733a.setClip(clipData);
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public void setExtras(@Nullable Bundle bundle) {
            this.f4733a.setExtras(bundle);
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public void setFlags(int i2) {
            this.f4733a.setFlags(i2);
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public void setLinkUri(@Nullable Uri uri) {
            this.f4733a.setLinkUri(uri);
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public void setSource(int i2) {
            this.f4733a.setSource(i2);
        }

        BuilderCompat31Impl(@NonNull ContentInfoCompat contentInfoCompat) {
            this.f4733a = new ContentInfo.Builder(contentInfoCompat.toContentInfo());
        }
    }

    /* loaded from: classes.dex */
    private static final class BuilderCompatImpl implements BuilderCompat {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        ClipData f4734a;

        /* renamed from: b  reason: collision with root package name */
        int f4735b;

        /* renamed from: c  reason: collision with root package name */
        int f4736c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        Uri f4737d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        Bundle f4738e;

        BuilderCompatImpl(@NonNull ClipData clipData, int i2) {
            this.f4734a = clipData;
            this.f4735b = i2;
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        @NonNull
        public ContentInfoCompat build() {
            return new ContentInfoCompat(new CompatImpl(this));
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public void setClip(@NonNull ClipData clipData) {
            this.f4734a = clipData;
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public void setExtras(@Nullable Bundle bundle) {
            this.f4738e = bundle;
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public void setFlags(int i2) {
            this.f4736c = i2;
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public void setLinkUri(@Nullable Uri uri) {
            this.f4737d = uri;
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public void setSource(int i2) {
            this.f4735b = i2;
        }

        BuilderCompatImpl(@NonNull ContentInfoCompat contentInfoCompat) {
            this.f4734a = contentInfoCompat.getClip();
            this.f4735b = contentInfoCompat.getSource();
            this.f4736c = contentInfoCompat.getFlags();
            this.f4737d = contentInfoCompat.getLinkUri();
            this.f4738e = contentInfoCompat.getExtras();
        }
    }

    /* loaded from: classes.dex */
    public static final class Builder {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final BuilderCompat f4732a;

        public Builder(@NonNull ContentInfoCompat contentInfoCompat) {
            if (Build.VERSION.SDK_INT >= 31) {
                this.f4732a = new BuilderCompat31Impl(contentInfoCompat);
            } else {
                this.f4732a = new BuilderCompatImpl(contentInfoCompat);
            }
        }

        @NonNull
        public ContentInfoCompat build() {
            return this.f4732a.build();
        }

        @NonNull
        public Builder setClip(@NonNull ClipData clipData) {
            this.f4732a.setClip(clipData);
            return this;
        }

        @NonNull
        public Builder setExtras(@Nullable Bundle bundle) {
            this.f4732a.setExtras(bundle);
            return this;
        }

        @NonNull
        public Builder setFlags(int i2) {
            this.f4732a.setFlags(i2);
            return this;
        }

        @NonNull
        public Builder setLinkUri(@Nullable Uri uri) {
            this.f4732a.setLinkUri(uri);
            return this;
        }

        @NonNull
        public Builder setSource(int i2) {
            this.f4732a.setSource(i2);
            return this;
        }

        public Builder(@NonNull ClipData clipData, int i2) {
            if (Build.VERSION.SDK_INT >= 31) {
                this.f4732a = new BuilderCompat31Impl(clipData, i2);
            } else {
                this.f4732a = new BuilderCompatImpl(clipData, i2);
            }
        }
    }

    @NonNull
    @RequiresApi(31)
    public static Pair<ContentInfo, ContentInfo> partition(@NonNull ContentInfo contentInfo, @NonNull Predicate<ClipData.Item> predicate) {
        return Api31Impl.partition(contentInfo, predicate);
    }
}
