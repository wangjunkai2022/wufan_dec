.class public Lcom/xinzhu/overmind/client/hook/common/e;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "ReplaceUIDMethodHookStub.java"


# static fields
.field public static d:I = -0x1

.field public static e:I = -0x3


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "replace_UID_index"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/g;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/client/hook/common/e;->a:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/xinzhu/overmind/client/hook/common/e;->b:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/xinzhu/overmind/client/hook/common/e;->c:I

    return-void
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/common/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "who",
            "method",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 1
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    array-length v0, p3

    .line 3
    iget v1, p0, Lcom/xinzhu/overmind/client/hook/common/e;->c:I

    if-ge v1, v0, :cond_5

    .line 4
    sget v2, Lcom/xinzhu/overmind/client/hook/common/e;->d:I

    if-eq v1, v2, :cond_4

    if-ltz v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget v2, Lcom/xinzhu/overmind/client/hook/common/e;->e:I

    if-ne v1, v2, :cond_3

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_4

    .line 6
    aget-object v0, p3, v1

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 7
    aget-object v0, p3, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 8
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getBaseVUid()I

    move-result v2

    if-eq v0, v2, :cond_2

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getVUid()I

    move-result v2

    if-eq v0, v2, :cond_2

    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/f;->d()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xinzhu/overmind/client/frameworks/f;->m(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9
    :cond_2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v1

    goto :goto_1

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/xinzhu/overmind/client/hook/common/e;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " mReplaceUIDIndex unexpected "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/xinzhu/overmind/client/hook/common/e;->c:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_4
    :goto_1
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/xinzhu/overmind/client/hook/common/e;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " mReplaceUIDIndex out of range"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
