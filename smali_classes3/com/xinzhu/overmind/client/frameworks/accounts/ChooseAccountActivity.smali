.class public Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;
.super Landroid/app/Activity;
.source "ChooseAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$b;,
        Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$d;,
        Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$c;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "AccountManager"


# instance fields
.field private a:[Landroid/os/Parcelable;

.field private b:Lcom/xinzhu/overmind/server/accounts/AccountManagerResponse;

.field private c:Landroid/os/Bundle;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->a:[Landroid/os/Parcelable;

    .line 3
    iput-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->b:Lcom/xinzhu/overmind/server/accounts/AccountManagerResponse;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->f:Ljava/util/HashMap;

    return-void
.end method

.method private a()V
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    iget-object v4, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->f:Ljava/util/HashMap;

    iget-object v5, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accountType"
        }
    .end annotation

    const-string v0, "AccountManager"

    .line 1
    iget-object v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/AuthenticatorDescription;

    .line 3
    iget-object v3, v2, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 4
    iget v2, v2, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v3, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No icon resource for account type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_1
    nop

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No icon name for account type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method


# virtual methods
.method protected c(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "l",
            "v",
            "position",
            "id"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->a:[Landroid/os/Parcelable;

    aget-object p1, p1, p3

    check-cast p1, Landroid/accounts/Account;

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->get()Lcom/xinzhu/overmind/client/frameworks/accounts/a;

    move-result-object p2

    .line 3
    iget-object p3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->e:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 p4, 0x4

    if-ne p3, p4, :cond_0

    .line 5
    iget-object p3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->e:Ljava/lang/String;

    const/4 p4, 0x2

    invoke-virtual {p2, p1, p3, p4}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)Z

    .line 6
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "selected account "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 8
    iget-object p3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string p4, "authAccount"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string p3, "accountType"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iput-object p2, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->c:Landroid/os/Bundle;

    .line 11
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->finish()V

    return-void
.end method

.method public finish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->b:Lcom/xinzhu/overmind/server/accounts/AccountManagerResponse;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->c:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/server/accounts/AccountManagerResponse;->b(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    const-string v2, "canceled"

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/xinzhu/overmind/server/accounts/AccountManagerResponse;->a(ILjava/lang/String;)V

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "accounts"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->a:[Landroid/os/Parcelable;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "accountManagerResponse"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/accounts/AccountManagerResponse;

    iput-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->b:Lcom/xinzhu/overmind/server/accounts/AccountManagerResponse;

    .line 4
    iget-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->a:[Landroid/os/Parcelable;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 6
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->finish()V

    return-void

    .line 7
    :cond_0
    :try_start_0
    new-instance p1, Lcom/xinzhu/haunted/android/app/a;

    invoke-direct {p1, p0}, Lcom/xinzhu/haunted/android/app/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/app/a;->g()Landroid/os/IBinder;

    move-result-object p1

    .line 8
    invoke-static {}, Lcom/xinzhu/overmind/server/am/f;->get()Lcom/xinzhu/overmind/server/am/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xinzhu/overmind/server/am/f;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v1

    iput v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->d:I

    .line 9
    invoke-static {}, Lcom/xinzhu/overmind/server/am/f;->get()Lcom/xinzhu/overmind/server/am/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xinzhu/overmind/server/am/f;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->e:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get caller identity \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    :goto_0
    iget p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->d:I

    const/16 v1, 0x3e8

    invoke-static {p1, v1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->p(II)Z

    move-result p1

    const-string v2, "androidPackageName"

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->e:Ljava/lang/String;

    .line 14
    :cond_1
    iget p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->d:I

    invoke-static {p1, v1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->p(II)Z

    move-result p1

    if-nez p1, :cond_2

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Non-system Uid: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->d:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tried to override packageName \n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :cond_2
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->a()V

    .line 18
    iget-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->a:[Landroid/os/Parcelable;

    array-length p1, p1

    new-array p1, p1, [Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$c;

    .line 19
    :goto_1
    iget-object v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->a:[Landroid/os/Parcelable;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 20
    new-instance v2, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$c;

    aget-object v3, v1, v0

    check-cast v3, Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aget-object v1, v1, v0

    check-cast v1, Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 21
    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$c;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    aput-object v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 22
    :cond_3
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$b;->i()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x102000a

    .line 23
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 24
    new-instance v1, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$b;

    const v2, 0x1090003

    invoke-direct {v1, p0, v2, p1}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$b;-><init>(Landroid/content/Context;I[Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 p1, 0x1

    .line 25
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 27
    new-instance p1, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$a;

    invoke-direct {p1, p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$a;-><init>(Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
