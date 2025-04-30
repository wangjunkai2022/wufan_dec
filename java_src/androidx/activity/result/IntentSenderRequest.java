package androidx.activity.result;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class IntentSenderRequest implements Parcelable {
    @NonNull
    public static final Parcelable.Creator<IntentSenderRequest> CREATOR = new Parcelable.Creator<IntentSenderRequest>() { // from class: androidx.activity.result.IntentSenderRequest.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IntentSenderRequest createFromParcel(Parcel parcel) {
            return new IntentSenderRequest(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IntentSenderRequest[] newArray(int i2) {
            return new IntentSenderRequest[i2];
        }
    };
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final IntentSender f91a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Intent f92b;

    /* renamed from: c  reason: collision with root package name */
    private final int f93c;

    /* renamed from: d  reason: collision with root package name */
    private final int f94d;

    IntentSenderRequest(@NonNull IntentSender intentSender, @Nullable Intent intent, int i2, int i4) {
        this.f91a = intentSender;
        this.f92b = intent;
        this.f93c = i2;
        this.f94d = i4;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Nullable
    public Intent getFillInIntent() {
        return this.f92b;
    }

    public int getFlagsMask() {
        return this.f93c;
    }

    public int getFlagsValues() {
        return this.f94d;
    }

    @NonNull
    public IntentSender getIntentSender() {
        return this.f91a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i2) {
        parcel.writeParcelable(this.f91a, i2);
        parcel.writeParcelable(this.f92b, i2);
        parcel.writeInt(this.f93c);
        parcel.writeInt(this.f94d);
    }

    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        private IntentSender f95a;

        /* renamed from: b  reason: collision with root package name */
        private Intent f96b;

        /* renamed from: c  reason: collision with root package name */
        private int f97c;

        /* renamed from: d  reason: collision with root package name */
        private int f98d;

        public Builder(@NonNull IntentSender intentSender) {
            this.f95a = intentSender;
        }

        @NonNull
        public IntentSenderRequest build() {
            return new IntentSenderRequest(this.f95a, this.f96b, this.f97c, this.f98d);
        }

        @NonNull
        public Builder setFillInIntent(@Nullable Intent intent) {
            this.f96b = intent;
            return this;
        }

        @NonNull
        public Builder setFlags(int i2, int i4) {
            this.f98d = i2;
            this.f97c = i4;
            return this;
        }

        public Builder(@NonNull PendingIntent pendingIntent) {
            this(pendingIntent.getIntentSender());
        }
    }

    IntentSenderRequest(@NonNull Parcel parcel) {
        this.f91a = (IntentSender) parcel.readParcelable(IntentSender.class.getClassLoader());
        this.f92b = (Intent) parcel.readParcelable(Intent.class.getClassLoader());
        this.f93c = parcel.readInt();
        this.f94d = parcel.readInt();
    }
}
