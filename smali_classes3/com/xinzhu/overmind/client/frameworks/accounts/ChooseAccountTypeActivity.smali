.class public Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;
.super Landroid/app/Activity;
.source "ChooseAccountTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$b;,
        Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$d;,
        Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$c;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "AccountChooser"


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;->a:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b(Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;->d(Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 11

    const-string v0, "AccountChooser"

    .line 1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    const/4 v6, 0x5

    const/4 v7, 0x0

    .line 2
    :try_start_0
    iget-object v8, v5, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8, v3}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8

    .line 3
    iget v9, v5, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4
    :try_start_1
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v10, v5, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 5
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6
    :cond_0
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    nop

    goto :goto_1

    :catch_1
    nop

    goto :goto_3

    :catch_2
    move-object v9, v7

    .line 7
    :goto_1
    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No icon resource for account type "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    move-object v6, v7

    goto :goto_4

    :catch_3
    move-object v9, v7

    .line 9
    :goto_3
    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No icon name for account type "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 11
    :goto_4
    new-instance v7, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$c;

    invoke-direct {v7, v5, v6, v9}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$c;-><init>(Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 12
    iget-object v6, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;->a:Ljava/util/HashMap;

    iget-object v5, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "accountType"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    const-string v0, "AccountChooser"

    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChooseAccountTypeActivity.setResultAndFinish: selected account type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
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

    const-string v0, "AccountChooser"

    const/4 v1, 0x2

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChooseAccountTypeActivity.onCreate(savedInstanceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "allowableAccountTypes"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    new-instance p1, Ljava/util/HashSet;

    array-length v2, v0

    invoke-direct {p1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 6
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 7
    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;->c()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;->b:Ljava/util/ArrayList;

    .line 10
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 12
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$c;

    if-eqz p1, :cond_2

    .line 13
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    iget-object v3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "errorMessage"

    const-string v1, "no allowable account types"

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 18
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 20
    :cond_4
    iget-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 21
    iget-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$c;

    iget-object p1, p1, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$c;->a:Landroid/accounts/AuthenticatorDescription;

    iget-object p1, p1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;->d(Ljava/lang/String;)V

    return-void

    .line 22
    :cond_5
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$b;->k()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x102000a

    .line 23
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 24
    new-instance v0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$b;

    const v2, 0x1090003

    iget-object v3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;->b:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v2, v3}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$b;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 25
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 26
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 27
    new-instance v0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$a;

    invoke-direct {v0, p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$a;-><init>(Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
