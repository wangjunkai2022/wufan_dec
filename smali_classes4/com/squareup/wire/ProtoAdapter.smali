.class public abstract Lcom/squareup/wire/ProtoAdapter;
.super Ljava/lang/Object;
.source "ProtoAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;,
        Lcom/squareup/wire/ProtoAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProtoAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapter\n+ 2 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapterKt\n*L\n1#1,297:1\n210#2,6:298\n224#2,7:304\n234#2,2:311\n239#2,3:313\n246#2,3:316\n253#2:319\n258#2:320\n263#2:321\n267#2:322\n271#2,4:323\n279#2,4:327\n328#2:331\n*E\n*S KotlinDebug\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapter\n*L\n83#1,6:298\n91#1,7:304\n96#1,2:311\n100#1,3:313\n104#1,3:316\n119#1:319\n124#1:320\n129#1:321\n136#1:322\n140#1,4:323\n40#1,4:327\n44#1:331\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008&\u0018\u0000 e*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u00028fB;\u0012\u0006\u0010O\u001a\u00020K\u0012\u000c\u0010X\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010T\u0012\u0008\u0010B\u001a\u0004\u0018\u000100\u0012\u0006\u0010>\u001a\u00020:\u0012\n\u0008\u0002\u0010J\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0004\u0008[\u0010\\B\u001d\u0008\u0016\u0012\u0006\u0010O\u001a\u00020K\u0012\n\u0010X\u001a\u0006\u0012\u0002\u0008\u00030]\u00a2\u0006\u0004\u0008[\u0010^B\'\u0008\u0016\u0012\u0006\u0010O\u001a\u00020K\u0012\n\u0010X\u001a\u0006\u0012\u0002\u0008\u00030]\u0012\u0008\u0010B\u001a\u0004\u0018\u000100\u00a2\u0006\u0004\u0008[\u0010_B/\u0008\u0016\u0012\u0006\u0010O\u001a\u00020K\u0012\n\u0010X\u001a\u0006\u0012\u0002\u0008\u00030]\u0012\u0008\u0010B\u001a\u0004\u0018\u000100\u0012\u0006\u0010>\u001a\u00020:\u00a2\u0006\u0004\u0008[\u0010`B\u001f\u0008\u0016\u0012\u0006\u0010O\u001a\u00020K\u0012\u000c\u0010X\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010T\u00a2\u0006\u0004\u0008[\u0010aB)\u0008\u0016\u0012\u0006\u0010O\u001a\u00020K\u0012\u000c\u0010X\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010T\u0012\u0008\u0010B\u001a\u0004\u0018\u000100\u00a2\u0006\u0004\u0008[\u0010bB1\u0008\u0016\u0012\u0006\u0010O\u001a\u00020K\u0012\u000c\u0010X\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010T\u0012\u0008\u0010B\u001a\u0004\u0018\u000100\u0012\u0006\u0010>\u001a\u00020:\u00a2\u0006\u0004\u0008[\u0010cB9\u0008\u0016\u0012\u0006\u0010O\u001a\u00020K\u0012\n\u0010X\u001a\u0006\u0012\u0002\u0008\u00030]\u0012\u0008\u0010B\u001a\u0004\u0018\u000100\u0012\u0006\u0010>\u001a\u00020:\u0012\u0008\u0010J\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0004\u0008[\u0010dJ\u0017\u0010\u0001\u001a\u00028\u00002\u0006\u0010\u0003\u001a\u00028\u0000H&\u00a2\u0006\u0004\u0008\u0001\u0010\u0004J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00028\u0000H&\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0008\u0010\u0003\u001a\u0004\u0018\u00018\u0000H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00028\u0000H&\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ)\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00052\u0008\u0010\u0003\u001a\u0004\u0018\u00018\u0000H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001d\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0015\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0003\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0015\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0003\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001d\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0003\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0017\u0010\"\u001a\u00028\u00002\u0006\u0010!\u001a\u00020 H&\u00a2\u0006\u0004\u0008\"\u0010#J\u0015\u0010%\u001a\u00028\u00002\u0006\u0010$\u001a\u00020\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u0015\u0010\'\u001a\u00028\u00002\u0006\u0010$\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\'\u0010(J\u0015\u0010+\u001a\u00028\u00002\u0006\u0010*\u001a\u00020)\u00a2\u0006\u0004\u0008+\u0010,J\u0015\u0010.\u001a\u00028\u00002\u0006\u0010\u001d\u001a\u00020-\u00a2\u0006\u0004\u0008.\u0010/J\u0017\u00101\u001a\u0002002\u0006\u0010\u0003\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u00081\u00102J\u001b\u00105\u001a\u0006\u0012\u0002\u0008\u00030\u00002\u0006\u00104\u001a\u000203H\u0000\u00a2\u0006\u0004\u00085\u00106J\u0012\u00108\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u0000070\u0000J\u0012\u00109\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u0000070\u0000R\u0019\u0010>\u001a\u00020:8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\'\u0010;\u001a\u0004\u0008<\u0010=R\u001b\u0010B\u001a\u0004\u0018\u0001008\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008+\u0010?\u001a\u0004\u0008@\u0010AR\u0016\u0010F\u001a\u00020C8@@\u0000X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008D\u0010ER\u001b\u0010J\u001a\u0004\u0018\u00018\u00008\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008%\u0010G\u001a\u0004\u0008H\u0010IR\u001c\u0010O\u001a\u00020K8\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\"\u0010L\u001a\u0004\u0008M\u0010NR*\u0010S\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u000007\u0018\u00010\u00008\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u00088\u0010P\u001a\u0004\u0008Q\u0010RR\u001f\u0010X\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010T8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008.\u0010U\u001a\u0004\u0008V\u0010WR*\u0010Z\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u000007\u0018\u00010\u00008\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u00089\u0010P\u001a\u0004\u0008Y\u0010R\u00a8\u0006g"
    }
    d2 = {
        "Lcom/squareup/wire/ProtoAdapter;",
        "E",
        "",
        "value",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "",
        "n",
        "(Ljava/lang/Object;)I",
        "tag",
        "o",
        "(ILjava/lang/Object;)I",
        "Lcom/squareup/wire/n;",
        "writer",
        "",
        "h",
        "(Lcom/squareup/wire/n;Ljava/lang/Object;)V",
        "m",
        "(Lcom/squareup/wire/n;ILjava/lang/Object;)V",
        "Lokio/BufferedSink;",
        "sink",
        "j",
        "(Lokio/BufferedSink;Ljava/lang/Object;)V",
        "",
        "k",
        "(Ljava/lang/Object;)[B",
        "Lokio/ByteString;",
        "l",
        "(Ljava/lang/Object;)Lokio/ByteString;",
        "Ljava/io/OutputStream;",
        "stream",
        "i",
        "(Ljava/io/OutputStream;Ljava/lang/Object;)V",
        "Lcom/squareup/wire/m;",
        "reader",
        "c",
        "(Lcom/squareup/wire/m;)Ljava/lang/Object;",
        "bytes",
        "g",
        "([B)Ljava/lang/Object;",
        "f",
        "(Lokio/ByteString;)Ljava/lang/Object;",
        "Lokio/BufferedSource;",
        "source",
        "e",
        "(Lokio/BufferedSource;)Ljava/lang/Object;",
        "Ljava/io/InputStream;",
        "d",
        "(Ljava/io/InputStream;)Ljava/lang/Object;",
        "",
        "F",
        "(Ljava/lang/Object;)Ljava/lang/String;",
        "Lcom/squareup/wire/WireField$Label;",
        "label",
        "G",
        "(Lcom/squareup/wire/WireField$Label;)Lcom/squareup/wire/ProtoAdapter;",
        "",
        "a",
        "b",
        "Lcom/squareup/wire/Syntax;",
        "Lcom/squareup/wire/Syntax;",
        "w",
        "()Lcom/squareup/wire/Syntax;",
        "syntax",
        "Ljava/lang/String;",
        "x",
        "()Ljava/lang/String;",
        "typeUrl",
        "",
        "y",
        "()Z",
        "isStruct",
        "Ljava/lang/Object;",
        "t",
        "()Ljava/lang/Object;",
        "identity",
        "Lcom/squareup/wire/FieldEncoding;",
        "Lcom/squareup/wire/FieldEncoding;",
        "s",
        "()Lcom/squareup/wire/FieldEncoding;",
        "fieldEncoding",
        "Lcom/squareup/wire/ProtoAdapter;",
        "u",
        "()Lcom/squareup/wire/ProtoAdapter;",
        "packedAdapter",
        "Lkotlin/reflect/KClass;",
        "Lkotlin/reflect/KClass;",
        "getType",
        "()Lkotlin/reflect/KClass;",
        "type",
        "v",
        "repeatedAdapter",
        "<init>",
        "(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;)V",
        "Ljava/lang/Class;",
        "(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V",
        "(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;Ljava/lang/String;)V",
        "(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;Ljava/lang/String;Lcom/squareup/wire/Syntax;)V",
        "(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;)V",
        "(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;)V",
        "(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;)V",
        "(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;)V",
        "M",
        "EnumConstantNotFoundException",
        "wire-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final A:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final B:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final C:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final D:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final E:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final F:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final G:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final H:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final I:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final J:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final K:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/time/Duration;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final L:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final M:Lcom/squareup/wire/ProtoAdapter$a;

.field public static final h:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final k:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final l:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final m:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final n:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final o:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final p:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final q:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final r:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final s:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final t:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final u:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final v:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final w:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final x:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final y:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final z:Lcom/squareup/wire/ProtoAdapter;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final b:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final c:Lcom/squareup/wire/FieldEncoding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final f:Lcom/squareup/wire/Syntax;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/squareup/wire/ProtoAdapter$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/squareup/wire/ProtoAdapter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/squareup/wire/ProtoAdapter;->M:Lcom/squareup/wire/ProtoAdapter$a;

    .line 1
    invoke-static {}, Lcom/squareup/wire/l;->a()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    sput-object v0, Lcom/squareup/wire/ProtoAdapter;->h:Lcom/squareup/wire/ProtoAdapter;

    .line 2
    invoke-static {}, Lcom/squareup/wire/l;->t()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    sput-object v1, Lcom/squareup/wire/ProtoAdapter;->i:Lcom/squareup/wire/ProtoAdapter;

    .line 3
    invoke-static {}, Lcom/squareup/wire/l;->G()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v2

    sput-object v2, Lcom/squareup/wire/ProtoAdapter;->j:Lcom/squareup/wire/ProtoAdapter;

    .line 4
    invoke-static {}, Lcom/squareup/wire/l;->y()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v3

    sput-object v3, Lcom/squareup/wire/ProtoAdapter;->k:Lcom/squareup/wire/ProtoAdapter;

    .line 5
    invoke-static {}, Lcom/squareup/wire/l;->p()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v3

    sput-object v3, Lcom/squareup/wire/ProtoAdapter;->l:Lcom/squareup/wire/ProtoAdapter;

    .line 6
    invoke-static {}, Lcom/squareup/wire/l;->w()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v3

    sput-object v3, Lcom/squareup/wire/ProtoAdapter;->m:Lcom/squareup/wire/ProtoAdapter;

    .line 7
    invoke-static {}, Lcom/squareup/wire/l;->u()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v3

    sput-object v3, Lcom/squareup/wire/ProtoAdapter;->n:Lcom/squareup/wire/ProtoAdapter;

    .line 8
    invoke-static {}, Lcom/squareup/wire/l;->H()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v4

    sput-object v4, Lcom/squareup/wire/ProtoAdapter;->o:Lcom/squareup/wire/ProtoAdapter;

    .line 9
    invoke-static {}, Lcom/squareup/wire/l;->z()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v5

    sput-object v5, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapter;

    .line 10
    invoke-static {}, Lcom/squareup/wire/l;->q()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v5

    sput-object v5, Lcom/squareup/wire/ProtoAdapter;->q:Lcom/squareup/wire/ProtoAdapter;

    .line 11
    invoke-static {}, Lcom/squareup/wire/l;->x()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v5

    sput-object v5, Lcom/squareup/wire/ProtoAdapter;->r:Lcom/squareup/wire/ProtoAdapter;

    .line 12
    invoke-static {}, Lcom/squareup/wire/l;->r()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v5

    sput-object v5, Lcom/squareup/wire/ProtoAdapter;->s:Lcom/squareup/wire/ProtoAdapter;

    .line 13
    invoke-static {}, Lcom/squareup/wire/l;->h()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v6

    sput-object v6, Lcom/squareup/wire/ProtoAdapter;->t:Lcom/squareup/wire/ProtoAdapter;

    .line 14
    invoke-static {}, Lcom/squareup/wire/l;->b()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v7

    sput-object v7, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    .line 15
    invoke-static {}, Lcom/squareup/wire/l;->A()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v8

    sput-object v8, Lcom/squareup/wire/ProtoAdapter;->v:Lcom/squareup/wire/ProtoAdapter;

    .line 16
    invoke-static {}, Lcom/squareup/wire/l;->j()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v9

    sput-object v9, Lcom/squareup/wire/ProtoAdapter;->w:Lcom/squareup/wire/ProtoAdapter;

    .line 17
    invoke-static {}, Lcom/squareup/wire/l;->C()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v9

    sput-object v9, Lcom/squareup/wire/ProtoAdapter;->x:Lcom/squareup/wire/ProtoAdapter;

    .line 18
    invoke-static {}, Lcom/squareup/wire/l;->B()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v9

    sput-object v9, Lcom/squareup/wire/ProtoAdapter;->y:Lcom/squareup/wire/ProtoAdapter;

    .line 19
    invoke-static {}, Lcom/squareup/wire/l;->D()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v9

    sput-object v9, Lcom/squareup/wire/ProtoAdapter;->z:Lcom/squareup/wire/ProtoAdapter;

    .line 20
    invoke-static {}, Lcom/squareup/wire/l;->E()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v9

    sput-object v9, Lcom/squareup/wire/ProtoAdapter;->A:Lcom/squareup/wire/ProtoAdapter;

    const-string v9, "type.googleapis.com/google.protobuf.DoubleValue"

    .line 21
    invoke-static {v6, v9}, Lcom/squareup/wire/l;->J(Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;)Lcom/squareup/wire/ProtoAdapter;

    move-result-object v6

    sput-object v6, Lcom/squareup/wire/ProtoAdapter;->B:Lcom/squareup/wire/ProtoAdapter;

    const-string v6, "type.googleapis.com/google.protobuf.FloatValue"

    .line 22
    invoke-static {v5, v6}, Lcom/squareup/wire/l;->J(Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;)Lcom/squareup/wire/ProtoAdapter;

    move-result-object v5

    sput-object v5, Lcom/squareup/wire/ProtoAdapter;->C:Lcom/squareup/wire/ProtoAdapter;

    const-string v5, "type.googleapis.com/google.protobuf.Int64Value"

    .line 23
    invoke-static {v3, v5}, Lcom/squareup/wire/l;->J(Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;)Lcom/squareup/wire/ProtoAdapter;

    move-result-object v3

    sput-object v3, Lcom/squareup/wire/ProtoAdapter;->D:Lcom/squareup/wire/ProtoAdapter;

    const-string v3, "type.googleapis.com/google.protobuf.UInt64Value"

    .line 24
    invoke-static {v4, v3}, Lcom/squareup/wire/l;->J(Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;)Lcom/squareup/wire/ProtoAdapter;

    move-result-object v3

    sput-object v3, Lcom/squareup/wire/ProtoAdapter;->E:Lcom/squareup/wire/ProtoAdapter;

    const-string v3, "type.googleapis.com/google.protobuf.Int32Value"

    .line 25
    invoke-static {v1, v3}, Lcom/squareup/wire/l;->J(Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;)Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    sput-object v1, Lcom/squareup/wire/ProtoAdapter;->F:Lcom/squareup/wire/ProtoAdapter;

    const-string v1, "type.googleapis.com/google.protobuf.UInt32Value"

    .line 26
    invoke-static {v2, v1}, Lcom/squareup/wire/l;->J(Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;)Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    sput-object v1, Lcom/squareup/wire/ProtoAdapter;->G:Lcom/squareup/wire/ProtoAdapter;

    const-string v1, "type.googleapis.com/google.protobuf.BoolValue"

    .line 27
    invoke-static {v0, v1}, Lcom/squareup/wire/l;->J(Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;)Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    sput-object v0, Lcom/squareup/wire/ProtoAdapter;->H:Lcom/squareup/wire/ProtoAdapter;

    const-string v0, "type.googleapis.com/google.protobuf.StringValue"

    .line 28
    invoke-static {v8, v0}, Lcom/squareup/wire/l;->J(Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;)Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    sput-object v0, Lcom/squareup/wire/ProtoAdapter;->I:Lcom/squareup/wire/ProtoAdapter;

    const-string v0, "type.googleapis.com/google.protobuf.BytesValue"

    .line 29
    invoke-static {v7, v0}, Lcom/squareup/wire/l;->J(Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;)Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    sput-object v0, Lcom/squareup/wire/ProtoAdapter;->J:Lcom/squareup/wire/ProtoAdapter;

    .line 30
    :try_start_0
    invoke-static {}, Lcom/squareup/wire/l;->i()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 31
    :catch_0
    new-instance v0, Lcom/squareup/wire/ProtoAdapter$a$a;

    invoke-direct {v0}, Lcom/squareup/wire/ProtoAdapter$a$a;-><init>()V

    .line 32
    :goto_0
    sput-object v0, Lcom/squareup/wire/ProtoAdapter;->K:Lcom/squareup/wire/ProtoAdapter;

    .line 33
    :try_start_1
    invoke-static {}, Lcom/squareup/wire/l;->s()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 34
    :catch_1
    new-instance v0, Lcom/squareup/wire/ProtoAdapter$a$a;

    invoke-direct {v0}, Lcom/squareup/wire/ProtoAdapter$a$a;-><init>()V

    .line 35
    :goto_1
    sput-object v0, Lcom/squareup/wire/ProtoAdapter;->L:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V
    .locals 1
    .param p1    # Lcom/squareup/wire/FieldEncoding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "fieldEncoding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {p2}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;)V

    return-void
.end method

.method public constructor <init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/squareup/wire/FieldEncoding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "fieldEncoding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p2}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    sget-object v0, Lcom/squareup/wire/Syntax;->PROTO_2:Lcom/squareup/wire/Syntax;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;)V

    return-void
.end method

.method public constructor <init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;Ljava/lang/String;Lcom/squareup/wire/Syntax;)V
    .locals 1
    .param p1    # Lcom/squareup/wire/FieldEncoding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/squareup/wire/Syntax;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const-string v0, "fieldEncoding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syntax"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p2}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;)V

    return-void
.end method

.method public constructor <init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;)V
    .locals 7
    .param p1    # Lcom/squareup/wire/FieldEncoding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/squareup/wire/Syntax;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/squareup/wire/Syntax;",
            "TE;)V"
        }
    .end annotation

    const-string v0, "fieldEncoding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syntax"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p2}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;)V
    .locals 2
    .param p1    # Lcom/squareup/wire/FieldEncoding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "fieldEncoding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v0, Lcom/squareup/wire/Syntax;->PROTO_2:Lcom/squareup/wire/Syntax;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;)V

    return-void
.end method

.method public constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/squareup/wire/FieldEncoding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "fieldEncoding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/squareup/wire/Syntax;->PROTO_2:Lcom/squareup/wire/Syntax;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;)V

    return-void
.end method

.method public constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;)V
    .locals 7
    .param p1    # Lcom/squareup/wire/FieldEncoding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/squareup/wire/Syntax;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const-string v0, "fieldEncoding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syntax"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 16
    invoke-direct/range {v1 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lcom/squareup/wire/FieldEncoding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/squareup/wire/Syntax;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/squareup/wire/Syntax;",
            "TE;)V"
        }
    .end annotation

    const-string v0, "fieldEncoding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syntax"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/wire/ProtoAdapter;->c:Lcom/squareup/wire/FieldEncoding;

    iput-object p2, p0, Lcom/squareup/wire/ProtoAdapter;->d:Lkotlin/reflect/KClass;

    iput-object p3, p0, Lcom/squareup/wire/ProtoAdapter;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/squareup/wire/ProtoAdapter;->f:Lcom/squareup/wire/Syntax;

    iput-object p5, p0, Lcom/squareup/wire/ProtoAdapter;->g:Ljava/lang/Object;

    .line 2
    instance-of p2, p0, Lcom/squareup/wire/k;

    const/4 p3, 0x0

    if-nez p2, :cond_4

    instance-of p4, p0, Lcom/squareup/wire/o;

    if-eqz p4, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget-object p4, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    if-ne p1, p4, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->s()Lcom/squareup/wire/FieldEncoding;

    move-result-object p1

    if-eq p1, p4, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 5
    new-instance p1, Lcom/squareup/wire/k;

    invoke-direct {p1, p0}, Lcom/squareup/wire/k;-><init>(Lcom/squareup/wire/ProtoAdapter;)V

    goto :goto_2

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unable to pack a length-delimited type."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    move-object p1, p3

    .line 7
    :goto_2
    iput-object p1, p0, Lcom/squareup/wire/ProtoAdapter;->a:Lcom/squareup/wire/ProtoAdapter;

    .line 8
    instance-of p1, p0, Lcom/squareup/wire/o;

    if-nez p1, :cond_6

    if-eqz p2, :cond_5

    goto :goto_3

    .line 9
    :cond_5
    new-instance p3, Lcom/squareup/wire/o;

    invoke-direct {p3, p0}, Lcom/squareup/wire/o;-><init>(Lcom/squareup/wire/ProtoAdapter;)V

    .line 10
    :cond_6
    :goto_3
    iput-object p3, p0, Lcom/squareup/wire/ProtoAdapter;->b:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;)V

    return-void
.end method

.method public static final A(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;)Lcom/squareup/wire/ProtoAdapter;
    .locals 1
    .param p0    # Lcom/squareup/wire/ProtoAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/squareup/wire/ProtoAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TK;>;",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TV;>;)",
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->M:Lcom/squareup/wire/ProtoAdapter$a;

    invoke-virtual {v0, p0, p1}, Lcom/squareup/wire/ProtoAdapter$a;->e(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;)Lcom/squareup/wire/ProtoAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final B(Ljava/lang/Class;)Lcom/squareup/wire/ProtoAdapter;
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "TM;TB;>;B:",
            "Lcom/squareup/wire/Message$a<",
            "TM;TB;>;>(",
            "Ljava/lang/Class<",
            "TM;>;)",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TM;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->M:Lcom/squareup/wire/ProtoAdapter$a;

    invoke-virtual {v0, p0}, Lcom/squareup/wire/ProtoAdapter$a;->f(Ljava/lang/Class;)Lcom/squareup/wire/ProtoAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final C(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/wire/ProtoAdapter;
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "TM;TB;>;B:",
            "Lcom/squareup/wire/Message$a<",
            "TM;TB;>;>(",
            "Ljava/lang/Class<",
            "TM;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TM;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->M:Lcom/squareup/wire/ProtoAdapter$a;

    invoke-virtual {v0, p0, p1}, Lcom/squareup/wire/ProtoAdapter$a;->g(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/wire/ProtoAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final D(Ljava/lang/Class;Ljava/lang/String;Lcom/squareup/wire/Syntax;)Lcom/squareup/wire/ProtoAdapter;
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/squareup/wire/Syntax;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "TM;TB;>;B:",
            "Lcom/squareup/wire/Message$a<",
            "TM;TB;>;>(",
            "Ljava/lang/Class<",
            "TM;>;",
            "Ljava/lang/String;",
            "Lcom/squareup/wire/Syntax;",
            ")",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TM;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->M:Lcom/squareup/wire/ProtoAdapter$a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/squareup/wire/ProtoAdapter$a;->h(Ljava/lang/Class;Ljava/lang/String;Lcom/squareup/wire/Syntax;)Lcom/squareup/wire/ProtoAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final p(Lcom/squareup/wire/Message;)Lcom/squareup/wire/ProtoAdapter;
    .locals 1
    .param p0    # Lcom/squareup/wire/Message;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "**>;>(TM;)",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TM;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->M:Lcom/squareup/wire/ProtoAdapter$a;

    invoke-virtual {v0, p0}, Lcom/squareup/wire/ProtoAdapter$a;->a(Lcom/squareup/wire/Message;)Lcom/squareup/wire/ProtoAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final q(Ljava/lang/Class;)Lcom/squareup/wire/ProtoAdapter;
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TM;>;)",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TM;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->M:Lcom/squareup/wire/ProtoAdapter$a;

    invoke-virtual {v0, p0}, Lcom/squareup/wire/ProtoAdapter$a;->b(Ljava/lang/Class;)Lcom/squareup/wire/ProtoAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final r(Ljava/lang/String;)Lcom/squareup/wire/ProtoAdapter;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/wire/ProtoAdapter<",
            "*>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->M:Lcom/squareup/wire/ProtoAdapter$a;

    invoke-virtual {v0, p0}, Lcom/squareup/wire/ProtoAdapter$a;->c(Ljava/lang/String;)Lcom/squareup/wire/ProtoAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final z(Ljava/lang/Class;)Lcom/squareup/wire/b;
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/squareup/wire/s;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lcom/squareup/wire/b<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->M:Lcom/squareup/wire/ProtoAdapter$a;

    invoke-virtual {v0, p0}, Lcom/squareup/wire/ProtoAdapter$a;->d(Ljava/lang/Class;)Lcom/squareup/wire/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract E(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation
.end method

.method public F(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final G(Lcom/squareup/wire/WireField$Label;)Lcom/squareup/wire/ProtoAdapter;
    .locals 1
    .param p1    # Lcom/squareup/wire/WireField$Label;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/WireField$Label;",
            ")",
            "Lcom/squareup/wire/ProtoAdapter<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/squareup/wire/WireField$Label;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/squareup/wire/WireField$Label;->isPacked()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/ProtoAdapter;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->b()Lcom/squareup/wire/ProtoAdapter;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public final a()Lcom/squareup/wire/ProtoAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/ProtoAdapter;->c:Lcom/squareup/wire/FieldEncoding;

    sget-object v1, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/squareup/wire/ProtoAdapter;->a:Lcom/squareup/wire/ProtoAdapter;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t create a packed adapter from a packed or repeated adapter."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to pack a length-delimited type."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Lcom/squareup/wire/ProtoAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/ProtoAdapter;->b:Lcom/squareup/wire/ProtoAdapter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t create a repeated adapter from a repeated or packed adapter."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract c(Lcom/squareup/wire/m;)Ljava/lang/Object;
    .param p1    # Lcom/squareup/wire/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/m;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final d(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapter;->e(Lokio/BufferedSource;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lokio/BufferedSource;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/BufferedSource;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/squareup/wire/m;

    invoke-direct {v0, p1}, Lcom/squareup/wire/m;-><init>(Lokio/BufferedSource;)V

    invoke-virtual {p0, v0}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/m;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lokio/ByteString;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/ByteString;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapter;->e(Lokio/BufferedSource;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final g([B)Ljava/lang/Object;
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapter;->e(Lokio/BufferedSource;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getType()Lkotlin/reflect/KClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KClass<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/ProtoAdapter;->d:Lkotlin/reflect/KClass;

    return-object v0
.end method

.method public abstract h(Lcom/squareup/wire/n;Ljava/lang/Object;)V
    .param p1    # Lcom/squareup/wire/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/n;",
            "TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final i(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapter;->j(Lokio/BufferedSink;Ljava/lang/Object;)V

    .line 3
    invoke-interface {p1}, Lokio/BufferedSink;->emit()Lokio/BufferedSink;

    return-void
.end method

.method public final j(Lokio/BufferedSink;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lokio/BufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/BufferedSink;",
            "TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/squareup/wire/n;

    invoke-direct {v0, p1}, Lcom/squareup/wire/n;-><init>(Lokio/BufferedSink;)V

    invoke-virtual {p0, v0, p2}, Lcom/squareup/wire/ProtoAdapter;->h(Lcom/squareup/wire/n;Ljava/lang/Object;)V

    return-void
.end method

.method public final k(Ljava/lang/Object;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)[B"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/squareup/wire/ProtoAdapter;->j(Lokio/BufferedSink;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0}, Lokio/Buffer;->readByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public final l(Ljava/lang/Object;)Lokio/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lokio/ByteString;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/squareup/wire/ProtoAdapter;->j(Lokio/BufferedSink;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public m(Lcom/squareup/wire/n;ILjava/lang/Object;)V
    .locals 1
    .param p1    # Lcom/squareup/wire/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/n;",
            "ITE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->s()Lcom/squareup/wire/FieldEncoding;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/squareup/wire/n;->f(ILcom/squareup/wire/FieldEncoding;)V

    .line 2
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->s()Lcom/squareup/wire/FieldEncoding;

    move-result-object p2

    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    if-ne p2, v0, :cond_1

    .line 3
    invoke-virtual {p0, p3}, Lcom/squareup/wire/ProtoAdapter;->n(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/n;->g(I)V

    .line 4
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/squareup/wire/ProtoAdapter;->h(Lcom/squareup/wire/n;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public abstract n(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation
.end method

.method public o(ILjava/lang/Object;)I
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Lcom/squareup/wire/ProtoAdapter;->n(Ljava/lang/Object;)I

    move-result p2

    .line 2
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->s()Lcom/squareup/wire/FieldEncoding;

    move-result-object v0

    sget-object v1, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    if-ne v0, v1, :cond_1

    .line 3
    sget-object v0, Lcom/squareup/wire/n;->b:Lcom/squareup/wire/n$a;

    invoke-virtual {v0, p2}, Lcom/squareup/wire/n$a;->i(I)I

    move-result v0

    add-int/2addr p2, v0

    .line 4
    :cond_1
    sget-object v0, Lcom/squareup/wire/n;->b:Lcom/squareup/wire/n$a;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/n$a;->h(I)I

    move-result p1

    add-int/2addr p1, p2

    :goto_0
    return p1
.end method

.method public final s()Lcom/squareup/wire/FieldEncoding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/ProtoAdapter;->c:Lcom/squareup/wire/FieldEncoding;

    return-object v0
.end method

.method public final t()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/ProtoAdapter;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public final u()Lcom/squareup/wire/ProtoAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/ProtoAdapter;->a:Lcom/squareup/wire/ProtoAdapter;

    return-object v0
.end method

.method public final v()Lcom/squareup/wire/ProtoAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/ProtoAdapter;->b:Lcom/squareup/wire/ProtoAdapter;

    return-object v0
.end method

.method public final w()Lcom/squareup/wire/Syntax;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/ProtoAdapter;->f:Lcom/squareup/wire/Syntax;

    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/ProtoAdapter;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final y()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->x:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->y:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->A:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->z:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
