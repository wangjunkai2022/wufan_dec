.class public Lcom/xinzhu/overmind/server/pm/a;
.super Ljava/lang/Object;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/pm/a$c;,
        Lcom/xinzhu/overmind/server/pm/a$b;,
        Lcom/xinzhu/overmind/server/pm/a$d;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/String; = "ComponentResolver"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/xinzhu/overmind/server/pm/a$b;

.field private final c:Lcom/xinzhu/overmind/server/pm/a$c;

.field private final d:Lcom/xinzhu/overmind/server/pm/a$b;

.field private final e:Lcom/xinzhu/overmind/server/pm/a$d;

.field private final f:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/xinzhu/overmind/server/pm/MindPackage$g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/a;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/xinzhu/overmind/server/pm/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xinzhu/overmind/server/pm/a$b;-><init>(Lcom/xinzhu/overmind/server/pm/a$a;)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/a;->b:Lcom/xinzhu/overmind/server/pm/a$b;

    .line 4
    new-instance v0, Lcom/xinzhu/overmind/server/pm/a$c;

    invoke-direct {v0, v1}, Lcom/xinzhu/overmind/server/pm/a$c;-><init>(Lcom/xinzhu/overmind/server/pm/a$a;)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/a;->c:Lcom/xinzhu/overmind/server/pm/a$c;

    .line 5
    new-instance v0, Lcom/xinzhu/overmind/server/pm/a$b;

    invoke-direct {v0, v1}, Lcom/xinzhu/overmind/server/pm/a$b;-><init>(Lcom/xinzhu/overmind/server/pm/a$a;)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/a;->d:Lcom/xinzhu/overmind/server/pm/a$b;

    .line 6
    new-instance v0, Lcom/xinzhu/overmind/server/pm/a$d;

    invoke-direct {v0, v1}, Lcom/xinzhu/overmind/server/pm/a$d;-><init>(Lcom/xinzhu/overmind/server/pm/a$a;)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/a;->e:Lcom/xinzhu/overmind/server/pm/a$d;

    .line 7
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/a;->f:Landroid/util/ArrayMap;

    return-void
.end method

.method private a(Lcom/xinzhu/overmind/server/pm/MindPackage;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pkg",
            "newIntents"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xinzhu/overmind/server/pm/MindPackage;",
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    .line 3
    iget-object v3, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$b;->f:Landroid/content/pm/ActivityInfo;

    iget-object v4, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 4
    invoke-static {v4, v5}, Lcom/xinzhu/overmind/server/pm/h;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 5
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/a;->b:Lcom/xinzhu/overmind/server/pm/a$b;

    const-string v4, "activity"

    invoke-static {v3, v2, v4, p2}, Lcom/xinzhu/overmind/server/pm/a$b;->E(Lcom/xinzhu/overmind/server/pm/a$b;Lcom/xinzhu/overmind/server/pm/MindPackage$b;Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(Lcom/xinzhu/overmind/server/pm/MindPackage;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkg"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    .line 2
    iget-object v3, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/overmind/server/pm/MindPackage$g;

    .line 3
    iget-object v4, v3, Lcom/xinzhu/overmind/server/pm/MindPackage$g;->f:Landroid/content/pm/ProviderInfo;

    iget-object v5, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/xinzhu/overmind/server/pm/h;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 4
    iget-object v4, p0, Lcom/xinzhu/overmind/server/pm/a;->c:Lcom/xinzhu/overmind/server/pm/a$c;

    invoke-virtual {v4, v3}, Lcom/xinzhu/overmind/server/pm/a$c;->E(Lcom/xinzhu/overmind/server/pm/MindPackage$g;)V

    .line 5
    iget-object v4, v3, Lcom/xinzhu/overmind/server/pm/MindPackage$g;->f:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v4, :cond_4

    const-string v5, ";"

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 7
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 8
    iget-object v8, p0, Lcom/xinzhu/overmind/server/pm/a;->f:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 9
    iget-object v8, p0, Lcom/xinzhu/overmind/server/pm/a;->f:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v8, v3, Lcom/xinzhu/overmind/server/pm/MindPackage$g;->f:Landroid/content/pm/ProviderInfo;

    iget-object v9, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v9, :cond_0

    .line 11
    iput-object v7, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_4

    .line 12
    :cond_0
    iput-object v9, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_4

    .line 13
    :cond_1
    iget-object v8, p0, Lcom/xinzhu/overmind/server/pm/a;->f:Landroid/util/ArrayMap;

    .line 14
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xinzhu/overmind/server/pm/MindPackage$g;

    if-eqz v8, :cond_2

    .line 15
    invoke-virtual {v8}, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a()Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 16
    invoke-virtual {v8}, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a()Landroid/content/ComponentName;

    move-result-object v8

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_3

    .line 17
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_3
    const-string v8, "?"

    .line 18
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping provider name "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " (in package "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "): name already used by "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ComponentResolver"

    invoke-static {v8, v7}, Lcom/xinzhu/overmind/utils/u;->j(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private d(Lcom/xinzhu/overmind/server/pm/MindPackage;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkg"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    .line 3
    iget-object v3, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$b;->f:Landroid/content/pm/ActivityInfo;

    iget-object v4, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/xinzhu/overmind/server/pm/h;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 4
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/a;->d:Lcom/xinzhu/overmind/server/pm/a$b;

    const/4 v4, 0x0

    const-string v5, "receiver"

    invoke-static {v3, v2, v5, v4}, Lcom/xinzhu/overmind/server/pm/a$b;->E(Lcom/xinzhu/overmind/server/pm/a$b;Lcom/xinzhu/overmind/server/pm/MindPackage$b;Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e(Lcom/xinzhu/overmind/server/pm/MindPackage;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkg"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackage$h;

    .line 3
    iget-object v3, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$h;->f:Landroid/content/pm/ServiceInfo;

    iget-object v4, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/xinzhu/overmind/server/pm/h;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 4
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/a;->e:Lcom/xinzhu/overmind/server/pm/a$d;

    invoke-virtual {v3, v2}, Lcom/xinzhu/overmind/server/pm/a$d;->E(Lcom/xinzhu/overmind/server/pm/MindPackage$h;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private u(Lcom/xinzhu/overmind/server/pm/MindPackage;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkg"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    iget-object v3, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    .line 3
    iget-object v4, p0, Lcom/xinzhu/overmind/server/pm/a;->b:Lcom/xinzhu/overmind/server/pm/a$b;

    const-string v5, "activity"

    invoke-static {v4, v3, v5}, Lcom/xinzhu/overmind/server/pm/a$b;->D(Lcom/xinzhu/overmind/server/pm/a$b;Lcom/xinzhu/overmind/server/pm/MindPackage$b;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    .line 5
    iget-object v3, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/overmind/server/pm/MindPackage$g;

    .line 6
    iget-object v4, p0, Lcom/xinzhu/overmind/server/pm/a;->c:Lcom/xinzhu/overmind/server/pm/a$c;

    invoke-virtual {v4, v3}, Lcom/xinzhu/overmind/server/pm/a$c;->L(Lcom/xinzhu/overmind/server/pm/MindPackage$g;)V

    .line 7
    iget-object v3, v3, Lcom/xinzhu/overmind/server/pm/MindPackage$g;->f:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    const-string v4, ";"

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 9
    :goto_2
    array-length v5, v3

    if-ge v4, v5, :cond_3

    .line 10
    iget-object v5, p0, Lcom/xinzhu/overmind/server/pm/a;->f:Landroid/util/ArrayMap;

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 11
    iget-object v5, p0, Lcom/xinzhu/overmind/server/pm/a;->f:Landroid/util/ArrayMap;

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 12
    :cond_4
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_5

    .line 13
    iget-object v3, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    .line 14
    iget-object v4, p0, Lcom/xinzhu/overmind/server/pm/a;->d:Lcom/xinzhu/overmind/server/pm/a$b;

    const-string v5, "receiver"

    invoke-static {v4, v3, v5}, Lcom/xinzhu/overmind/server/pm/a$b;->D(Lcom/xinzhu/overmind/server/pm/a$b;Lcom/xinzhu/overmind/server/pm/MindPackage$b;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 15
    :cond_5
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_5
    if-ge v1, v0, :cond_6

    .line 16
    iget-object v2, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackage$h;

    .line 17
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/a;->e:Lcom/xinzhu/overmind/server/pm/a$d;

    invoke-virtual {v3, v2}, Lcom/xinzhu/overmind/server/pm/a$d;->K(Lcom/xinzhu/overmind/server/pm/MindPackage$h;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method


# virtual methods
.method b(Lcom/xinzhu/overmind/server/pm/MindPackage;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkg"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/server/pm/a;->a(Lcom/xinzhu/overmind/server/pm/MindPackage;Ljava/util/List;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/pm/a;->e(Lcom/xinzhu/overmind/server/pm/MindPackage;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/pm/a;->c(Lcom/xinzhu/overmind/server/pm/MindPackage;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/pm/a;->d(Lcom/xinzhu/overmind/server/pm/MindPackage;)V

    .line 7
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method f(Landroid/content/ComponentName;)Lcom/xinzhu/overmind/server/pm/MindPackage$g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/a;->c:Lcom/xinzhu/overmind/server/pm/a$c;

    invoke-static {v1}, Lcom/xinzhu/overmind/server/pm/a$c;->D(Lcom/xinzhu/overmind/server/pm/a$c;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackage$g;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method g(Landroid/content/ComponentName;)Lcom/xinzhu/overmind/server/pm/MindPackage$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/a;->d:Lcom/xinzhu/overmind/server/pm/a$b;

    invoke-static {v1}, Lcom/xinzhu/overmind/server/pm/a$b;->F(Lcom/xinzhu/overmind/server/pm/a$b;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getActivity(Landroid/content/ComponentName;)Lcom/xinzhu/overmind/server/pm/MindPackage$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/a;->b:Lcom/xinzhu/overmind/server/pm/a$b;

    invoke-static {v1}, Lcom/xinzhu/overmind/server/pm/a$b;->F(Lcom/xinzhu/overmind/server/pm/a$b;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method h(Landroid/content/ComponentName;)Lcom/xinzhu/overmind/server/pm/MindPackage$h;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/a;->e:Lcom/xinzhu/overmind/server/pm/a$d;

    invoke-static {v1}, Lcom/xinzhu/overmind/server/pm/a$d;->D(Lcom/xinzhu/overmind/server/pm/a$d;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackage$h;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method i(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 2
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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/a;->b:Lcom/xinzhu/overmind/server/pm/a$b;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/a$b;->K(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method j(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
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
            "activities",
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

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/a;->b:Lcom/xinzhu/overmind/server/pm/a$b;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/xinzhu/overmind/server/pm/a$b;->L(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method k(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 2
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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/a;->b:Lcom/xinzhu/overmind/server/pm/a$b;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/a$b;->K(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method l(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "authority",
            "flags",
            "userId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, ";"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 3
    aget-object p1, p1, v1

    .line 4
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/a;->f:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackage$g;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 5
    monitor-exit v0

    return-object p1

    .line 6
    :cond_0
    iget-object v1, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object v1, v1, Lcom/xinzhu/overmind/server/pm/MindPackage;->l:Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 7
    invoke-virtual {v1, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->i(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    move-result-object v1

    invoke-static {p1, p2, v1, p3}, Lcom/xinzhu/overmind/server/pm/i;->k(Lcom/xinzhu/overmind/server/pm/MindPackage$g;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method m(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 2
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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/a;->c:Lcom/xinzhu/overmind/server/pm/a$c;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/a$c;->J(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method n(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
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
            "providers",
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
            "Lcom/xinzhu/overmind/server/pm/MindPackage$g;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/a;->c:Lcom/xinzhu/overmind/server/pm/a$c;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/xinzhu/overmind/server/pm/a$c;->K(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method o(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "processName",
            "metaDataKey",
            "flags",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/a;->c:Lcom/xinzhu/overmind/server/pm/a$c;

    invoke-static {v2}, Lcom/xinzhu/overmind/server/pm/a$c;->D(Lcom/xinzhu/overmind/server/pm/a$c;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_7

    .line 4
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/a;->c:Lcom/xinzhu/overmind/server/pm/a$c;

    invoke-static {v3}, Lcom/xinzhu/overmind/server/pm/a$c;->D(Lcom/xinzhu/overmind/server/pm/a$c;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/overmind/server/pm/MindPackage$g;

    .line 5
    iget-object v4, v3, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object v4, v4, Lcom/xinzhu/overmind/server/pm/MindPackage;->l:Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    if-nez v4, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v5, v3, Lcom/xinzhu/overmind/server/pm/MindPackage$g;->f:Landroid/content/pm/ProviderInfo;

    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 7
    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 8
    iget-object v5, v3, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->d:Landroid/os/Bundle;

    if-eqz v5, :cond_6

    .line 9
    invoke-virtual {v5, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v5

    iget-object v6, v3, Lcom/xinzhu/overmind/server/pm/MindPackage$g;->f:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v5, v6, p3, p4}, Lcom/xinzhu/overmind/server/pm/h;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {v4, p4}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->i(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    move-result-object v4

    invoke-static {v3, p3, v4, p4}, Lcom/xinzhu/overmind/server/pm/i;->k(Lcom/xinzhu/overmind/server/pm/MindPackage$g;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_1

    .line 12
    :cond_5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 13
    :cond_7
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method p(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 2
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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/a;->d:Lcom/xinzhu/overmind/server/pm/a$b;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/a$b;->K(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method q(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
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
            "receivers",
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

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/a;->d:Lcom/xinzhu/overmind/server/pm/a$b;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/xinzhu/overmind/server/pm/a$b;->L(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method r(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 2
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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/a;->e:Lcom/xinzhu/overmind/server/pm/a$d;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/a$d;->I(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method s(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
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
            "services",
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

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/a;->e:Lcom/xinzhu/overmind/server/pm/a$d;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/xinzhu/overmind/server/pm/a$d;->J(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method t(Lcom/xinzhu/overmind/server/pm/MindPackage;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkg"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/pm/a;->u(Lcom/xinzhu/overmind/server/pm/MindPackage;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
