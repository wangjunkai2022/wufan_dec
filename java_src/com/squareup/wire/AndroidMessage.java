package com.squareup.wire;

import android.os.Parcel;
import android.os.Parcelable;
import com.squareup.wire.Message;
import com.squareup.wire.Message.a;
import java.lang.reflect.Array;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidMessage.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b&\u0018\u0000 \u0013*\u0014\b\u0000\u0010\u0002*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0001*\u0014\b\u0001\u0010\u0004*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00012\u00020\u0005:\u0002\u0014\u0015B\u001f\b\u0004\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016J\b\u0010\f\u001a\u00020\bH\u0016¨\u0006\u0016"}, d2 = {"Lcom/squareup/wire/AndroidMessage;", "Lcom/squareup/wire/Message;", "M", "Lcom/squareup/wire/Message$a;", "B", "Landroid/os/Parcelable;", "Landroid/os/Parcel;", "dest", "", "flags", "", "writeToParcel", "describeContents", "Lcom/squareup/wire/ProtoAdapter;", "adapter", "Lokio/ByteString;", "unknownFields", "<init>", "(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V", "f", "a", "b", "wire-runtime"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public abstract class AndroidMessage<M extends Message<M, B>, B extends Message.a<M, B>> extends Message<M, B> implements Parcelable {

    /* renamed from: f  reason: collision with root package name */
    public static final a f56755f = new a(null);

    /* compiled from: AndroidMessage.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bJ\"\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00020\u0005\"\u0004\b\u0002\u0010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00020\u0003H\u0007¨\u0006\t"}, d2 = {"com/squareup/wire/AndroidMessage$a", "", "E", "Lcom/squareup/wire/ProtoAdapter;", "adapter", "Landroid/os/Parcelable$Creator;", "a", "<init>", "()V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class a {
        private a() {
        }

        @JvmStatic
        @NotNull
        public final <E> Parcelable.Creator<E> a(@NotNull ProtoAdapter<E> adapter) {
            Intrinsics.checkNotNullParameter(adapter, "adapter");
            return new b(adapter);
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AndroidMessage.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0002\u0010\u00012\b\u0012\u0004\u0012\u00028\u00020\u0002B\u0017\b\u0000\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00020\f¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0005\u001a\u00028\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u001d\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00020\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"com/squareup/wire/AndroidMessage$b", "M", "Landroid/os/Parcelable$Creator;", "Landroid/os/Parcel;", "input", "createFromParcel", "(Landroid/os/Parcel;)Ljava/lang/Object;", "", "size", "", "newArray", "(I)[Ljava/lang/Object;", "Lcom/squareup/wire/ProtoAdapter;", "a", "Lcom/squareup/wire/ProtoAdapter;", "adapter", "<init>", "(Lcom/squareup/wire/ProtoAdapter;)V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class b<M> implements Parcelable.Creator<M> {

        /* renamed from: a  reason: collision with root package name */
        private final ProtoAdapter<M> f56756a;

        public b(@NotNull ProtoAdapter<M> adapter) {
            Intrinsics.checkNotNullParameter(adapter, "adapter");
            this.f56756a = adapter;
        }

        @Override // android.os.Parcelable.Creator
        public M createFromParcel(@NotNull Parcel input) {
            Intrinsics.checkNotNullParameter(input, "input");
            ProtoAdapter<M> protoAdapter = this.f56756a;
            byte[] createByteArray = input.createByteArray();
            Intrinsics.checkNotNullExpressionValue(createByteArray, "input.createByteArray()");
            return protoAdapter.g(createByteArray);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        public M[] newArray(int i2) {
            KClass<?> type = this.f56756a.getType();
            Object newInstance = Array.newInstance(type != null ? JvmClassMappingKt.getJavaObjectType(type) : null, i2);
            Objects.requireNonNull(newInstance, "null cannot be cast to non-null type kotlin.Array<M>");
            return (M[]) ((Object[]) newInstance);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected AndroidMessage(@NotNull ProtoAdapter<M> adapter, @NotNull ByteString unknownFields) {
        super(adapter, unknownFields);
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
    }

    @JvmStatic
    @NotNull
    public static final <E> Parcelable.Creator<E> k(@NotNull ProtoAdapter<E> protoAdapter) {
        return f56755f.a(protoAdapter);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel dest, int i2) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        dest.writeByteArray(d());
    }
}
