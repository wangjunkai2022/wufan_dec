.class public Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;
.super Landroid/app/Activity;
.source "GrantCredentialsPermissionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final f:Ljava/lang/String; = "account"

.field public static final g:Ljava/lang/String; = "authTokenType"

.field public static final h:Ljava/lang/String; = "response"

.field public static final i:Ljava/lang/String; = "uid"


# instance fields
.field private a:Landroid/accounts/Account;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Landroid/os/Bundle;

.field protected e:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->d:Landroid/os/Bundle;

    return-void
.end method

.method private a(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "account"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3
    aget-object v4, v0, v3

    .line 4
    iget-object v5, v4, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    :try_start_0
    iget-object v0, v4, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    iget v1, v4, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 6
    :catch_0
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    return-object p1

    .line 7
    :catch_1
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    return-object p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageLabel"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->e:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$b;->n()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$a;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public final c(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->d:Landroid/os/Bundle;

    return-void
.end method

.method public finish()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "response"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->d:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    const-string v2, "canceled"

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 6
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$a;->o()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->get()Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    move-result-object p1

    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->a:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->b:Ljava/lang/String;

    iget v2, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->c:I

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    .line 3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "retry"

    .line 4
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 5
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 6
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->c(Landroid/os/Bundle;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$a;->q()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 8
    invoke-static {}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->get()Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    move-result-object p1

    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->a:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->b:Ljava/lang/String;

    iget v2, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->c:I

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    .line 9
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
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
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$b;->m()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 3
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const-string p1, "layout_inflater"

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->e:Landroid/view/LayoutInflater;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 7
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->finish()V

    return-void

    :cond_0
    const-string v1, "account"

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iput-object v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->a:Landroid/accounts/Account;

    const-string v1, "authTokenType"

    .line 9
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->b:Ljava/lang/String;

    const-string v1, "uid"

    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->c:I

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 12
    iget v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->c:I

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->a:Landroid/accounts/Account;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->b:Ljava/lang/String;

    if-eqz v3, :cond_3

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 14
    :cond_1
    :try_start_0
    invoke-direct {p0, v2}, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 15
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$a;->p()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v4, 0x8

    .line 16
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    new-instance v4, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity$a;

    invoke-direct {v4, p0, v3}, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity$a;-><init>(Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;Landroid/widget/TextView;)V

    .line 18
    new-instance v3, Lcom/xinzhu/haunted/android/accounts/c;

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/xinzhu/haunted/android/accounts/c;-><init>(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->a:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v6, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->b:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v4, v7}, Lcom/xinzhu/haunted/android/accounts/c;->f(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 19
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$a;->o()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$a;->q()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$a;->t()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 22
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v1, v5

    .line 23
    :try_start_1
    invoke-virtual {p1, v6, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 24
    :catch_0
    invoke-direct {p0, v6}, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 25
    :cond_2
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$a;->k()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->a:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$a;->n()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 27
    :catch_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 28
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->finish()V

    return-void

    .line 29
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 30
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->finish()V

    return-void
.end method
