.class public final Lcom/squareup/wire/MessageSerializedForm;
.super Ljava/lang/Object;
.source "MessageSerializedForm.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/MessageSerializedForm$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message<",
        "TM;TB;>;B:",
        "Lcom/squareup/wire/Message$a<",
        "TM;TB;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000 \u0012*\u0014\u0008\u0000\u0010\u0002*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0001*\u0014\u0008\u0001\u0010\u0004*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u00020\u0005:\u0001\rB\u001d\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0006\u0010\u0007\u001a\u00020\u0006R\u001c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00088\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0016\u0010\u000f\u001a\u00020\u000c8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/squareup/wire/MessageSerializedForm;",
        "Lcom/squareup/wire/Message;",
        "M",
        "Lcom/squareup/wire/Message$a;",
        "B",
        "Ljava/io/Serializable;",
        "",
        "readResolve",
        "Ljava/lang/Class;",
        "b",
        "Ljava/lang/Class;",
        "messageClass",
        "",
        "a",
        "[B",
        "bytes",
        "<init>",
        "([BLjava/lang/Class;)V",
        "c",
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
.field public static final c:Lcom/squareup/wire/MessageSerializedForm$a;

.field private static final serialVersionUID:J


# instance fields
.field private final a:[B

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TM;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/squareup/wire/MessageSerializedForm$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/squareup/wire/MessageSerializedForm$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/squareup/wire/MessageSerializedForm;->c:Lcom/squareup/wire/MessageSerializedForm$a;

    return-void
.end method

.method public constructor <init>([BLjava/lang/Class;)V
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/Class<",
            "TM;>;)V"
        }
    .end annotation

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/wire/MessageSerializedForm;->a:[B

    iput-object p2, p0, Lcom/squareup/wire/MessageSerializedForm;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->M:Lcom/squareup/wire/ProtoAdapter$a;

    iget-object v1, p0, Lcom/squareup/wire/MessageSerializedForm;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter$a;->b(Ljava/lang/Class;)Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/squareup/wire/MessageSerializedForm;->a:[B

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->g([B)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/io/StreamCorruptedException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
