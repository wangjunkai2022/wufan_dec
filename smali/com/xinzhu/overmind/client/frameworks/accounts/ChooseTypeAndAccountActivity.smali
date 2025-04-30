.class public Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;
.super Landroid/app/Activity;
.source "ChooseTypeAndAccountActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# static fields
.field public static final A:I = 0x2

.field private static final B:Ljava/lang/String; = "pendingRequest"

.field private static final C:Ljava/lang/String; = "existingAccounts"

.field private static final D:Ljava/lang/String; = "selectedAccountName"

.field private static final E:Ljava/lang/String; = "selectedAddAccount"

.field private static final F:Ljava/lang/String; = "accountsList"

.field private static final G:Ljava/lang/String; = "visibilityList"

.field private static final H:I = -0x1

.field private static final I:Landroid/content/ComponentName;

.field private static final p:Ljava/lang/String; = "AccountChooser"

.field public static final q:Ljava/lang/String; = "allowableAccounts"

.field public static final r:Ljava/lang/String; = "allowableAccountTypes"

.field public static final s:Ljava/lang/String; = "addAccountOptions"

.field public static final t:Ljava/lang/String; = "addAccountRequiredFeatures"

.field public static final u:Ljava/lang/String; = "authTokenType"

.field public static final v:Ljava/lang/String; = "selectedAccount"

.field public static final w:Ljava/lang/String; = "alwaysPromptForAccount"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final x:Ljava/lang/String; = "descriptionTextOverride"

.field public static final y:I = 0x0

.field public static final z:I = 0x1


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:[Landroid/os/Parcelable;

.field private j:I

.field private k:Landroid/widget/Button;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$c;->e()I

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->I:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->d:Z

    .line 4
    iput v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->h:I

    .line 5
    iput-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->i:[Landroid/os/Parcelable;

    return-void
.end method

.method static synthetic a(Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->j:I

    return p1
.end method

.method static synthetic b(Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->k:Landroid/widget/Button;

    return-object p0
.end method

.method private c(Lcom/xinzhu/overmind/client/frameworks/accounts/a;)Ljava/util/LinkedHashMap;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accountManager"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xinzhu/overmind/client/frameworks/accounts/a;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->m:Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const/16 v2, 0x3e8

    .line 3
    invoke-static {v2}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result v2

    .line 4
    invoke-virtual {p1, v1, v2, v1}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object p1

    .line 5
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 7
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p1, v3

    .line 8
    iget-object v5, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->a:Ljava/util/Set;

    if-eqz v5, :cond_0

    .line 9
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    iget-object v5, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->b:Ljava/util/Set;

    if-eqz v5, :cond_1

    iget-object v6, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 11
    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 13
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v1, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private d(Landroid/content/Intent;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "intent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Set<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    const-string v0, "allowableAccounts"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 4
    check-cast v1, Landroid/accounts/Account;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method private e(Ljava/util/ArrayList;Ljava/lang/String;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "accounts",
            "selectedAccountName",
            "selectedAddNewAccount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/accounts/Account;",
            ">;",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1

    :cond_0
    const/4 p3, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 3
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return p3

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private f(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accounts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/accounts/Account;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-boolean v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->n:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->n:Z

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 6
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$c;->d()I

    move-result v2

    .line 7
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    :cond_1
    return-object v0
.end method

.method private g(Landroid/content/Intent;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "intent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "allowableAccountTypes"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/HashSet;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 4
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 5
    iget-object v4, v4, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    new-instance v0, Ljava/util/HashSet;

    .line 7
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 8
    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-object v1, v0

    :cond_1
    return-object v1
.end method

.method public static h(Landroid/content/Intent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->I:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private i(Landroid/accounts/Account;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "account"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selected account "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private j(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "descriptionOverride"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$a;->r()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final k([Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listItems"
        }
    .end annotation

    const v0, 0x102000a

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 2
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x109000f

    invoke-direct {v1, p0, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setChoiceMode(I)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 5
    new-instance v1, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity$a;

    invoke-direct {v1, p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity$a;-><init>(Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 6
    iget v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->j:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    const/4 p1, 0x2

    const-string v0, "AccountChooser"

    .line 8
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "List item "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->j:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " should be selected"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private m(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$d;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method private n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "accountName",
            "accountType"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, p1, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->get()Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    move-result-object v1

    iget-object v2, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->m:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->get()Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    move-result-object v3

    iget-object v4, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->m:Ljava/lang/String;

    invoke-virtual {v3, v0, v4, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)Z

    :cond_0
    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 8
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "authAccount"

    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "accountType"

    .line 10
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 11
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    const-string v0, "AccountChooser"

    .line 12
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChooseTypeAndAccountActivity.setResultAndFinish: selected account "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private o()V
    .locals 3

    const-string v0, "AccountChooser"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x80000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "allowableAccountTypes"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "addAccountOptions"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "addAccountRequiredFeatures"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "authTokenType"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 12
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 13
    iput v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->h:I

    return-void
.end method


# virtual methods
.method protected l(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const-string v0, "AccountChooser"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "runAddAccountForAuthenticator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "addAccountOptions"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "addAccountRequiredFeatures"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authTokenType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    move-object v8, p0

    invoke-virtual/range {v2 .. v9}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    const-string v0, "AccountChooser"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    :cond_0
    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 4
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ChooseTypeAndAccountActivity.onActivityResult(reqCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", resCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", extras="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v2, 0x0

    .line 5
    iput v2, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->h:I

    if-nez p2, :cond_4

    .line 6
    iget-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void

    :cond_4
    const/4 v4, -0x1

    if-ne p2, v4, :cond_c

    const-string p2, "accountType"

    const/4 v4, 0x1

    if-ne p1, v4, :cond_5

    if-eqz p3, :cond_c

    .line 9
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 10
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->l(Ljava/lang/String;)V

    return-void

    :cond_5
    if-ne p1, v1, :cond_c

    if-eqz p3, :cond_6

    const-string p1, "authAccount"

    .line 11
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    move-object p1, v3

    :goto_1
    if-eqz v3, :cond_7

    if-nez p1, :cond_a

    .line 13
    :cond_7
    invoke-static {}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->get()Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    move-result-object p2

    iget-object p3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->m:Ljava/lang/String;

    iget v4, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->l:I

    invoke-virtual {p2, p3, v4, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsForPackage(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object p2

    .line 14
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 15
    iget-object v4, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->i:[Landroid/os/Parcelable;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_8

    aget-object v7, v4, v6

    .line 16
    check-cast v7, Landroid/accounts/Account;

    invoke-interface {p3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 17
    :cond_8
    array-length v4, p2

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_a

    aget-object v6, p2, v5

    .line 18
    invoke-interface {p3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 19
    iget-object v3, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 20
    iget-object p1, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    goto :goto_4

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    if-nez v3, :cond_b

    if-eqz p1, :cond_c

    .line 21
    :cond_b
    invoke-direct {p0, v3, p1}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 22
    :cond_c
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 23
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCancelButtonClicked(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    const-string v0, "AccountChooser"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChooseTypeAndAccountActivity.onCreate(savedInstanceState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v2, 0x0

    .line 3
    :try_start_0
    new-instance v3, Lcom/xinzhu/haunted/android/app/a;

    invoke-direct {v3, p0}, Lcom/xinzhu/haunted/android/app/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/xinzhu/haunted/android/app/a;->g()Landroid/os/IBinder;

    move-result-object v3

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/server/am/f;->get()Lcom/xinzhu/overmind/server/am/f;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/xinzhu/overmind/server/am/f;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v4

    iput v4, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->l:I

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/server/am/f;->get()Lcom/xinzhu/overmind/server/am/f;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/xinzhu/overmind/server/am/f;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->m:Ljava/lang/String;

    .line 6
    iget v4, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->l:I

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 7
    iput-boolean v2, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->n:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to get caller identity \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 10
    invoke-direct {p0, v3}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->d(Landroid/content/Intent;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->a:Ljava/util/Set;

    .line 11
    invoke-direct {p0, v3}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->g(Landroid/content/Intent;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->b:Ljava/util/Set;

    const-string v4, "descriptionTextOverride"

    .line 12
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->e:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v3, "pendingRequest"

    .line 13
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->h:I

    const-string v3, "existingAccounts"

    .line 14
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    iput-object v3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->i:[Landroid/os/Parcelable;

    const-string v3, "selectedAccountName"

    .line 15
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->c:Ljava/lang/String;

    const-string v3, "selectedAddAccount"

    .line 16
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->d:Z

    const-string v3, "accountsList"

    .line 17
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    const-string v4, "visibilityList"

    .line 18
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 19
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v5, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->f:Ljava/util/LinkedHashMap;

    const/4 v5, 0x0

    .line 20
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_4

    .line 21
    iget-object v6, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->f:Ljava/util/LinkedHashMap;

    aget-object v7, v3, v5

    check-cast v7, Landroid/accounts/Account;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v6, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 22
    :cond_2
    iput v2, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->h:I

    const/4 v4, 0x0

    .line 23
    iput-object v4, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->i:[Landroid/os/Parcelable;

    const-string v4, "selectedAccount"

    .line 24
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    if-eqz v3, :cond_3

    .line 25
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->c:Ljava/lang/String;

    .line 26
    :cond_3
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->get()Lcom/xinzhu/overmind/client/frameworks/accounts/a;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->c(Lcom/xinzhu/overmind/client/frameworks/accounts/a;)Ljava/util/LinkedHashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->f:Ljava/util/LinkedHashMap;

    .line 27
    :cond_4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selected account name is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->g:Ljava/util/ArrayList;

    .line 30
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/4 v3, 0x3

    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v3, v4, :cond_6

    .line 32
    iget-object v3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->g:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 33
    :cond_7
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->n:Z

    if-eqz v0, :cond_8

    .line 34
    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 35
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 36
    iput-boolean v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->o:Z

    .line 37
    :cond_8
    iget-boolean v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->o:Z

    if-eqz v0, :cond_9

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void

    .line 39
    :cond_9
    iget v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->h:I

    if-nez v0, :cond_b

    .line 40
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 41
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->m(Landroid/os/Bundle;)V

    .line 42
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_a

    .line 43
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->l(Ljava/lang/String;)V

    goto :goto_3

    .line 44
    :cond_a
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->o()V

    .line 45
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->g:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->f(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->g:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->c:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->d:Z

    invoke-direct {p0, v3, v4, v5}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->e(Ljava/util/ArrayList;Ljava/lang/String;Z)I

    move-result v3

    iput v3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->j:I

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$b;->l()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 49
    iget-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->e:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->j(Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->k([Ljava/lang/String;)V

    const p1, 0x102001a

    .line 51
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->k:Landroid/widget/Button;

    .line 52
    iget v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->j:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    const/4 v2, 0x1

    :cond_c
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "AccountChooser"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOkButtonClicked(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->j:I

    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->o()V

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->j:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->i(Landroid/accounts/Account;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "outState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->h:I

    const-string v1, "pendingRequest"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->i:[Landroid/os/Parcelable;

    const-string v1, "existingAccounts"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 5
    :cond_0
    iget v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->j:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v3, "selectedAddAccount"

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->g:Ljava/util/ArrayList;

    iget v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->j:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v1, "selectedAccountName"

    .line 11
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Parcelable;

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    iget-object v3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    add-int/lit8 v5, v2, 0x1

    .line 15
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    aput-object v6, v0, v2

    .line 16
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v5

    goto :goto_1

    :cond_3
    const-string v2, "accountsList"

    .line 17
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const-string v0, "visibilityList"

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "accountManagerFuture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "intent"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->h:I

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->get()Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    move-result-object v1

    iget-object v2, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->m:Ljava/lang/String;

    iget v3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->l:I

    invoke-virtual {v1, v2, v3, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsForPackage(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->i:[Landroid/os/Parcelable;

    .line 5
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x10000001

    and-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 7
    :catch_0
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "errorMessage"

    const-string v1, "error communicating with server"

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 9
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :catch_1
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
