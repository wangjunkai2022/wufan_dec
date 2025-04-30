.class final Lcom/xinzhu/overmind/server/pm/a$d;
.super Lcom/xinzhu/overmind/server/pm/f;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/pm/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xinzhu/overmind/server/pm/f<",
        "Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;",
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
            "Lcom/xinzhu/overmind/server/pm/MindPackage$h;",
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

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/a$d;->m:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xinzhu/overmind/server/pm/a$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/pm/a$d;-><init>()V

    return-void
.end method

.method static synthetic D(Lcom/xinzhu/overmind/server/pm/a$d;)Landroid/util/ArrayMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/pm/a$d;->m:Landroid/util/ArrayMap;

    return-object p0
.end method


# virtual methods
.method E(Lcom/xinzhu/overmind/server/pm/MindPackage$h;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/a$d;->m:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;

    .line 4
    invoke-virtual {p0, v2}, Lcom/xinzhu/overmind/server/pm/f;->b(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected F(Ljava/lang/String;Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;)Z
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
    iget-object p2, p2, Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;->h:Lcom/xinzhu/overmind/server/pm/MindPackage$h;

    iget-object p2, p2, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object p2, p2, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected G(I)[Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;
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
    new-array p1, p1, [Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;

    return-object p1
.end method

.method protected H(Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;II)Landroid/content/pm/ResolveInfo;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "filter",
            "match",
            "userId"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;->h:Lcom/xinzhu/overmind/server/pm/MindPackage$h;

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v1

    iget-object v2, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$h;->f:Landroid/content/pm/ServiceInfo;

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
    iget v2, p0, Lcom/xinzhu/overmind/server/pm/a$d;->n:I

    invoke-virtual {v1, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->i(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    move-result-object v1

    invoke-static {v0, v2, v1, p3}, Lcom/xinzhu/overmind/server/pm/i;->l(Lcom/xinzhu/overmind/server/pm/MindPackage$h;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object p3

    .line 5
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 6
    iput-object p3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 7
    iget p3, p0, Lcom/xinzhu/overmind/server/pm/a$d;->n:I

    and-int/lit8 p3, p3, 0x40

    if-eqz p3, :cond_2

    .line 8
    iget-object p3, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->a:Landroid/content/IntentFilter;

    iput-object p3, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 9
    :cond_2
    iget-object p3, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->a:Landroid/content/IntentFilter;

    invoke-virtual {p3}, Landroid/content/IntentFilter;->getPriority()I

    move-result p3

    iput p3, v1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 10
    iget-object p3, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget p3, p3, Lcom/xinzhu/overmind/server/pm/MindPackage;->n:I

    iput p3, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 11
    iput p2, v1, Landroid/content/pm/ResolveInfo;->match:I

    .line 12
    iget-boolean p2, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->b:Z

    iput-boolean p2, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 13
    iget p2, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->c:I

    iput p2, v1, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 14
    iget-object p2, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->d:Ljava/lang/String;

    iput-object p2, v1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 15
    iget p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->e:I

    iput p1, v1, Landroid/content/pm/ResolveInfo;->icon:I

    return-object v1
.end method

.method I(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
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
    iput p3, p0, Lcom/xinzhu/overmind/server/pm/a$d;->n:I

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

.method J(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
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
            "packageServices",
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
            "Lcom/xinzhu/overmind/server/pm/MindPackage$h;",
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
    iput p3, p0, Lcom/xinzhu/overmind/server/pm/a$d;->n:I

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

    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackage$h;

    iget-object v1, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;

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

.method K(Lcom/xinzhu/overmind/server/pm/MindPackage$h;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/a$d;->m:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;

    .line 4
    invoke-virtual {p0, v2}, Lcom/xinzhu/overmind/server/pm/f;->x(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
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
    check-cast p2, Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/xinzhu/overmind/server/pm/a$d;->F(Ljava/lang/String;Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;)Z

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
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/server/pm/a$d;->G(I)[Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;

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
            "filter",
            "match",
            "userId"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/a$d;->H(Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;II)Landroid/content/pm/ResolveInfo;

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
    iput v0, p0, Lcom/xinzhu/overmind/server/pm/a$d;->n:I

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/f;->t(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
