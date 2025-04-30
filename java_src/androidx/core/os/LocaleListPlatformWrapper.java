package androidx.core.os;

import android.os.LocaleList;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.Locale;
@RequiresApi(24)
/* loaded from: classes.dex */
final class LocaleListPlatformWrapper implements LocaleListInterface {

    /* renamed from: a  reason: collision with root package name */
    private final LocaleList f4501a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LocaleListPlatformWrapper(LocaleList localeList) {
        this.f4501a = localeList;
    }

    public boolean equals(Object obj) {
        return this.f4501a.equals(((LocaleListInterface) obj).getLocaleList());
    }

    @Override // androidx.core.os.LocaleListInterface
    public Locale get(int i2) {
        return this.f4501a.get(i2);
    }

    @Override // androidx.core.os.LocaleListInterface
    @Nullable
    public Locale getFirstMatch(@NonNull String[] strArr) {
        return this.f4501a.getFirstMatch(strArr);
    }

    @Override // androidx.core.os.LocaleListInterface
    public Object getLocaleList() {
        return this.f4501a;
    }

    public int hashCode() {
        return this.f4501a.hashCode();
    }

    @Override // androidx.core.os.LocaleListInterface
    public int indexOf(Locale locale) {
        return this.f4501a.indexOf(locale);
    }

    @Override // androidx.core.os.LocaleListInterface
    public boolean isEmpty() {
        return this.f4501a.isEmpty();
    }

    @Override // androidx.core.os.LocaleListInterface
    public int size() {
        return this.f4501a.size();
    }

    @Override // androidx.core.os.LocaleListInterface
    public String toLanguageTags() {
        return this.f4501a.toLanguageTags();
    }

    public String toString() {
        return this.f4501a.toString();
    }
}
