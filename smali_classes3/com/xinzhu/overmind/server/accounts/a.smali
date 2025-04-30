.class Lcom/xinzhu/overmind/server/accounts/a;
.super Lcom/xinzhu/overmind/server/pm/l;
.source "AccountAuthenticatorCache.java"

# interfaces
.implements Lcom/xinzhu/overmind/server/accounts/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xinzhu/overmind/server/pm/l<",
        "Landroid/accounts/AuthenticatorDescription;",
        ">;",
        "Lcom/xinzhu/overmind/server/accounts/d;"
    }
.end annotation


# static fields
.field private static final o:Ljava/lang/String; = "Account"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "android.accounts.AccountAuthenticator"

    const-string v1, "account-authenticator"

    .line 1
    invoke-direct {p0, p1, v0, v0, v1}, Lcom/xinzhu/overmind/server/pm/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Landroid/accounts/AuthenticatorDescription;I)Lcom/xinzhu/overmind/server/pm/l$d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "type",
            "userId"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/xinzhu/overmind/server/pm/l;->p(Ljava/lang/Object;I)Lcom/xinzhu/overmind/server/pm/l$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "res",
            "packageName",
            "attrs"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/a;->y(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/accounts/AuthenticatorDescription;

    move-result-object p1

    return-object p1
.end method

.method public y(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/accounts/AuthenticatorDescription;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "res",
            "packageName",
            "attrs"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$e;->A()[I

    move-result-object v0

    .line 2
    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    :try_start_0
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$e;->C()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$e;->F()I

    move-result p3

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 6
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$e;->E()I

    move-result p3

    .line 7
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 8
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$e;->G()I

    move-result p3

    .line 9
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 10
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$e;->B()I

    move-result p3

    .line 11
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 12
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$e;->D()I

    move-result p3

    .line 13
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p2

    .line 16
    :cond_0
    :try_start_1
    new-instance p3, Landroid/accounts/AuthenticatorDescription;

    move-object v0, p3

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Landroid/accounts/AuthenticatorDescription;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p3

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    throw p2
.end method
