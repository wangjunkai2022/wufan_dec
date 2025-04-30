.class final Lcom/xinzhu/overmind/server/pm/a$b;
.super Lcom/xinzhu/overmind/server/pm/f;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/pm/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xinzhu/overmind/server/pm/f<",
        "Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final m:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/xinzhu/overmind/server/pm/MindPackage$b;",
            ">;"
        }
    .end annotation
.end field

.field private n:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/pm/f;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/a$b;->m:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xinzhu/overmind/server/pm/a$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/pm/a$b;-><init>()V

    return-void
.end method

.method static synthetic D(Lcom/xinzhu/overmind/server/pm/a$b;Lcom/xinzhu/overmind/server/pm/MindPackage$b;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/pm/a$b;->M(Lcom/xinzhu/overmind/server/pm/MindPackage$b;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic E(Lcom/xinzhu/overmind/server/pm/a$b;Lcom/xinzhu/overmind/server/pm/MindPackage$b;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/a$b;->G(Lcom/xinzhu/overmind/server/pm/MindPackage$b;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic F(Lcom/xinzhu/overmind/server/pm/a$b;)Landroid/util/ArrayMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/pm/a$b;->m:Landroid/util/ArrayMap;

    return-object p0
.end method

.method private G(Lcom/xinzhu/overmind/server/pm/MindPackage$b;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "type",
            "newIntents"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xinzhu/overmind/server/pm/MindPackage$b;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/a$b;->m:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    iget-object v2, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;

    if-eqz p3, :cond_0

    const-string v3, "activity"

    .line 4
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0, v2}, Lcom/xinzhu/overmind/server/pm/f;->b(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private M(Lcom/xinzhu/overmind/server/pm/MindPackage$b;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "type"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/a$b;->m:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p2, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 3
    iget-object v1, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;

    .line 4
    invoke-virtual {p0, v1}, Lcom/xinzhu/overmind/server/pm/f;->x(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private N(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ps"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v0

    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/server/pm/h;->getMindPackageSettingsInternal(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method protected H(Ljava/lang/String;Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "info"
        }
    .end annotation

    .line 1
    iget-object p2, p2, Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;->h:Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    iget-object p2, p2, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object p2, p2, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected I(I)[Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 1
    new-array p1, p1, [Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;

    return-object p1
.end method

.method protected J(Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;II)Landroid/content/pm/ResolveInfo;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "info",
            "match",
            "userId"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;->h:Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v1

    iget-object v2, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$b;->f:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v2, p3}, Lcom/xinzhu/overmind/server/pm/h;->isComponentEnabled(Landroid/content/pm/ComponentInfo;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object v1, v1, Lcom/xinzhu/overmind/server/pm/MindPackage;->l:Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    if-nez v1, :cond_1

    return-object v2

    .line 4
    :cond_1
    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/pm/a$b;->N(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    move-result-object v1

    .line 5
    iget-object v2, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iput-object v1, v2, Lcom/xinzhu/overmind/server/pm/MindPackage;->l:Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 6
    iget v2, p0, Lcom/xinzhu/overmind/server/pm/a$b;->n:I

    .line 7
    invoke-virtual {v1, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->i(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    move-result-object v1

    invoke-static {v0, v2, v1, p3}, Lcom/xinzhu/overmind/server/pm/i;->e(Lcom/xinzhu/overmind/server/pm/MindPackage$b;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object p3

    .line 8
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 9
    iput-object p3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 10
    iget p3, p0, Lcom/xinzhu/overmind/server/pm/a$b;->n:I

    and-int/lit8 p3, p3, 0x40

    if-eqz p3, :cond_2

    .line 11
    iget-object p3, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->a:Landroid/content/IntentFilter;

    iput-object p3, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 12
    :cond_2
    iget-object p3, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->a:Landroid/content/IntentFilter;

    invoke-virtual {p3}, Landroid/content/IntentFilter;->getPriority()I

    move-result p3

    iput p3, v1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 13
    iget-object p3, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget p3, p3, Lcom/xinzhu/overmind/server/pm/MindPackage;->n:I

    iput p3, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 14
    iput p2, v1, Landroid/content/pm/ResolveInfo;->match:I

    .line 15
    iget-boolean p2, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->b:Z

    iput-boolean p2, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 16
    iget p2, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->c:I

    iput p2, v1, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 17
    iget-object p2, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->d:Ljava/lang/String;

    iput-object p2, v1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 18
    iget p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->e:I

    iput p1, v1, Landroid/content/pm/ResolveInfo;->icon:I

    return-object v1
.end method

.method K(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "resolvedType",
            "flags",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iput p3, p0, Lcom/xinzhu/overmind/server/pm/a$b;->n:I

    const/high16 v0, 0x10000

    and-int/2addr p3, v0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 2
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/f;->t(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method L(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "resolvedType",
            "flags",
            "packageActivities",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/pm/MindPackage$b;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iput p3, p0, Lcom/xinzhu/overmind/server/pm/a$b;->n:I

    const/high16 v0, 0x10000

    and-int/2addr p3, v0

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 2
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    .line 3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v0, p3, :cond_3

    .line 4
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    iget-object v1, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 8
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    .line 9
    invoke-super/range {v1 .. v6}, Lcom/xinzhu/overmind/server/pm/f;->u(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic q(Ljava/lang/String;Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "packageName",
            "info"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/xinzhu/overmind/server/pm/a$b;->H(Ljava/lang/String;Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic r(I)[Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "size"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/server/pm/a$b;->I(I)[Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic s(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "info",
            "match",
            "userId"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/a$b;->J(Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public t(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "resolvedType",
            "defaultOnly",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_0

    const/high16 v0, 0x10000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    iput v0, p0, Lcom/xinzhu/overmind/server/pm/a$b;->n:I

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/f;->t(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
