.class public Lcom/xinzhu/overmind/client/hook/common/d;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "ReplacePkgUserIdMethodHookStub.java"


# static fields
.field public static e:I = -0x1

.field public static f:I = -0x2

.field public static g:I = -0x3


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "replace_pkg_index",
            "replace_userId_index"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/g;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/client/hook/common/d;->a:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/xinzhu/overmind/client/hook/common/d;->b:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/xinzhu/overmind/client/hook/common/d;->c:I

    .line 5
    iput p3, p0, Lcom/xinzhu/overmind/client/hook/common/d;->d:I

    return-void
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/common/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
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
    iget v1, p0, Lcom/xinzhu/overmind/client/hook/common/d;->d:I

    if-ge v1, v0, :cond_d

    iget v1, p0, Lcom/xinzhu/overmind/client/hook/common/d;->c:I

    if-ge v1, v0, :cond_d

    .line 4
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    if-eq v1, v2, :cond_8

    const/4 v2, -0x1

    if-ltz v1, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    sget v3, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    if-ne v1, v3, :cond_2

    add-int/lit8 v1, v0, -0x1

    goto :goto_2

    .line 6
    :cond_2
    sget v3, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    if-ne v1, v3, :cond_7

    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v3, p3

    if-ge v1, v3, :cond_5

    .line 8
    aget-object v3, p3, v1

    instance-of v3, v3, Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    aget-object v3, p3, v1

    check-cast v3, Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v4

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/xinzhu/overmind/client/frameworks/f;->t(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, -0x1

    :goto_2
    if-ltz v1, :cond_8

    .line 11
    aget-object v2, p3, v1

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 12
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v1

    goto :goto_3

    .line 13
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xinzhu/overmind/client/hook/common/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mReplacePkgIndex unexpected type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p3, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 14
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/xinzhu/overmind/client/hook/common/d;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " mReplacePkgIndex unexpected "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/xinzhu/overmind/client/hook/common/d;->c:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_8
    :goto_3
    iget v1, p0, Lcom/xinzhu/overmind/client/hook/common/d;->d:I

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    if-eq v1, v2, :cond_c

    if-ltz v1, :cond_9

    goto :goto_4

    .line 16
    :cond_9
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    if-ne v1, v2, :cond_b

    add-int/lit8 v1, v0, -0x1

    :goto_4
    if-ltz v1, :cond_c

    .line 17
    aget-object v0, p3, v1

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 18
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostUid()I

    move-result v0

    invoke-static {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v1

    goto :goto_5

    .line 19
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xinzhu/overmind/client/hook/common/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mReplaceUserIdIndex unexpected type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p3, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 20
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/xinzhu/overmind/client/hook/common/d;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " mReplaceUserIdIndex unexpected "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/xinzhu/overmind/client/hook/common/d;->d:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_c
    :goto_5
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 22
    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/xinzhu/overmind/client/hook/common/d;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " mReplaceUserIdIndex or mReplacePkgIndex out of range"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method
