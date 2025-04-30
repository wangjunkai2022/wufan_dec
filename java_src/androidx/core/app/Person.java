package androidx.core.app;

import android.app.Person;
import android.os.Bundle;
import android.os.PersistableBundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.IconCompat;
/* loaded from: classes.dex */
public class Person {

    /* renamed from: g  reason: collision with root package name */
    private static final String f4057g = "name";

    /* renamed from: h  reason: collision with root package name */
    private static final String f4058h = "icon";

    /* renamed from: i  reason: collision with root package name */
    private static final String f4059i = "uri";

    /* renamed from: j  reason: collision with root package name */
    private static final String f4060j = "key";

    /* renamed from: k  reason: collision with root package name */
    private static final String f4061k = "isBot";

    /* renamed from: l  reason: collision with root package name */
    private static final String f4062l = "isImportant";
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    CharSequence f4063a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    IconCompat f4064b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    String f4065c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    String f4066d;

    /* renamed from: e  reason: collision with root package name */
    boolean f4067e;

    /* renamed from: f  reason: collision with root package name */
    boolean f4068f;

    /* loaded from: classes.dex */
    public static class Builder {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        CharSequence f4069a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        IconCompat f4070b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        String f4071c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        String f4072d;

        /* renamed from: e  reason: collision with root package name */
        boolean f4073e;

        /* renamed from: f  reason: collision with root package name */
        boolean f4074f;

        public Builder() {
        }

        @NonNull
        public Person build() {
            return new Person(this);
        }

        @NonNull
        public Builder setBot(boolean z3) {
            this.f4073e = z3;
            return this;
        }

        @NonNull
        public Builder setIcon(@Nullable IconCompat iconCompat) {
            this.f4070b = iconCompat;
            return this;
        }

        @NonNull
        public Builder setImportant(boolean z3) {
            this.f4074f = z3;
            return this;
        }

        @NonNull
        public Builder setKey(@Nullable String str) {
            this.f4072d = str;
            return this;
        }

        @NonNull
        public Builder setName(@Nullable CharSequence charSequence) {
            this.f4069a = charSequence;
            return this;
        }

        @NonNull
        public Builder setUri(@Nullable String str) {
            this.f4071c = str;
            return this;
        }

        Builder(Person person) {
            this.f4069a = person.f4063a;
            this.f4070b = person.f4064b;
            this.f4071c = person.f4065c;
            this.f4072d = person.f4066d;
            this.f4073e = person.f4067e;
            this.f4074f = person.f4068f;
        }
    }

    Person(Builder builder) {
        this.f4063a = builder.f4069a;
        this.f4064b = builder.f4070b;
        this.f4065c = builder.f4071c;
        this.f4066d = builder.f4072d;
        this.f4067e = builder.f4073e;
        this.f4068f = builder.f4074f;
    }

    @NonNull
    @RequiresApi(28)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static Person fromAndroidPerson(@NonNull android.app.Person person) {
        return new Builder().setName(person.getName()).setIcon(person.getIcon() != null ? IconCompat.createFromIcon(person.getIcon()) : null).setUri(person.getUri()).setKey(person.getKey()).setBot(person.isBot()).setImportant(person.isImportant()).build();
    }

    @NonNull
    public static Person fromBundle(@NonNull Bundle bundle) {
        Bundle bundle2 = bundle.getBundle(f4058h);
        return new Builder().setName(bundle.getCharSequence("name")).setIcon(bundle2 != null ? IconCompat.createFromBundle(bundle2) : null).setUri(bundle.getString("uri")).setKey(bundle.getString("key")).setBot(bundle.getBoolean(f4061k)).setImportant(bundle.getBoolean(f4062l)).build();
    }

    @NonNull
    @RequiresApi(22)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static Person fromPersistableBundle(@NonNull PersistableBundle persistableBundle) {
        return new Builder().setName(persistableBundle.getString("name")).setUri(persistableBundle.getString("uri")).setKey(persistableBundle.getString("key")).setBot(persistableBundle.getBoolean(f4061k)).setImportant(persistableBundle.getBoolean(f4062l)).build();
    }

    @Nullable
    public IconCompat getIcon() {
        return this.f4064b;
    }

    @Nullable
    public String getKey() {
        return this.f4066d;
    }

    @Nullable
    public CharSequence getName() {
        return this.f4063a;
    }

    @Nullable
    public String getUri() {
        return this.f4065c;
    }

    public boolean isBot() {
        return this.f4067e;
    }

    public boolean isImportant() {
        return this.f4068f;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public String resolveToLegacyUri() {
        String str = this.f4065c;
        if (str != null) {
            return str;
        }
        if (this.f4063a != null) {
            return "name:" + ((Object) this.f4063a);
        }
        return "";
    }

    @NonNull
    @RequiresApi(28)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public android.app.Person toAndroidPerson() {
        return new Person.Builder().setName(getName()).setIcon(getIcon() != null ? getIcon().toIcon() : null).setUri(getUri()).setKey(getKey()).setBot(isBot()).setImportant(isImportant()).build();
    }

    @NonNull
    public Builder toBuilder() {
        return new Builder(this);
    }

    @NonNull
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putCharSequence("name", this.f4063a);
        IconCompat iconCompat = this.f4064b;
        bundle.putBundle(f4058h, iconCompat != null ? iconCompat.toBundle() : null);
        bundle.putString("uri", this.f4065c);
        bundle.putString("key", this.f4066d);
        bundle.putBoolean(f4061k, this.f4067e);
        bundle.putBoolean(f4062l, this.f4068f);
        return bundle;
    }

    @NonNull
    @RequiresApi(22)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PersistableBundle toPersistableBundle() {
        PersistableBundle persistableBundle = new PersistableBundle();
        CharSequence charSequence = this.f4063a;
        persistableBundle.putString("name", charSequence != null ? charSequence.toString() : null);
        persistableBundle.putString("uri", this.f4065c);
        persistableBundle.putString("key", this.f4066d);
        persistableBundle.putBoolean(f4061k, this.f4067e);
        persistableBundle.putBoolean(f4062l, this.f4068f);
        return persistableBundle;
    }
}
