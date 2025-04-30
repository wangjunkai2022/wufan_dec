.class public Lcom/xinzhu/overmind/server/pm/MindPackage;
.super Ljava/lang/Object;
.source "MindPackage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/pm/MindPackage$SigningDetails;,
        Lcom/xinzhu/overmind/server/pm/MindPackage$c;,
        Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;,
        Lcom/xinzhu/overmind/server/pm/MindPackage$ProviderIntentInfo;,
        Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;,
        Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;,
        Lcom/xinzhu/overmind/server/pm/MindPackage$f;,
        Lcom/xinzhu/overmind/server/pm/MindPackage$e;,
        Lcom/xinzhu/overmind/server/pm/MindPackage$d;,
        Lcom/xinzhu/overmind/server/pm/MindPackage$g;,
        Lcom/xinzhu/overmind/server/pm/MindPackage$h;,
        Lcom/xinzhu/overmind/server/pm/MindPackage$b;
    }
.end annotation


# static fields
.field private static final A:I = 0x1

.field static final B:Ljava/lang/String; = "android.test.base"

.field static final C:Ljava/lang/String; = "android.test.mock"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xinzhu/overmind/server/pm/MindPackage;",
            ">;"
        }
    .end annotation
.end field

.field static final D:Ljava/lang/String; = "android.test.runner"

.field static final E:Ljava/lang/String; = "org.apache.http.legacy"

.field private static final z:Ljava/lang/String;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/server/pm/MindPackage$b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/server/pm/MindPackage$b;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/server/pm/MindPackage$g;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/server/pm/MindPackage$h;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/server/pm/MindPackage$d;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/server/pm/MindPackage$e;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/server/pm/MindPackage$f;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:[Landroid/content/pm/Signature;

.field public j:Landroid/content/pm/PackageParser$SigningDetails;

.field public k:Landroid/os/Bundle;

.field public l:Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

.field public m:Ljava/lang/String;

.field public n:I

.field public o:Ljava/lang/String;

.field public p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public r:I

.field public s:Landroid/content/pm/ApplicationInfo;

.field public t:Ljava/lang/String;

.field public u:[Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:I

.field public x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ConfigurationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/xinzhu/overmind/server/pm/MindPackage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xinzhu/overmind/server/pm/MindPackage;->z:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackage$a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/pm/MindPackage$a;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/server/pm/MindPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$Package;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aPackage"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->b:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->c:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->d:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->e:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->f:Ljava/util/ArrayList;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->g:Ljava/util/ArrayList;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->h:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->x:Ljava/util/ArrayList;

    .line 11
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->y:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->a:Ljava/util/ArrayList;

    .line 13
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    .line 14
    new-instance v3, Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    invoke-direct {v3, v2}, Lcom/xinzhu/overmind/server/pm/MindPackage$b;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 15
    iget-object v2, v3, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;

    .line 16
    iput-object v3, v4, Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;->h:Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    goto :goto_1

    .line 17
    :cond_0
    iput-object p0, v3, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 18
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->b:Ljava/util/ArrayList;

    .line 20
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    .line 21
    new-instance v3, Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    invoke-direct {v3, v2}, Lcom/xinzhu/overmind/server/pm/MindPackage$b;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 22
    iget-object v2, v3, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;

    .line 23
    iput-object v3, v4, Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;->h:Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    goto :goto_3

    .line 24
    :cond_2
    iput-object p0, v3, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 25
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 26
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->c:Ljava/util/ArrayList;

    .line 27
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Provider;

    .line 28
    iget-object v3, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 29
    iget-object v4, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    aget-object v3, v3, v1

    iput-object v3, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 30
    new-instance v3, Lcom/xinzhu/overmind/server/pm/MindPackage$g;

    invoke-direct {v3, v2}, Lcom/xinzhu/overmind/server/pm/MindPackage$g;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    .line 31
    iget-object v2, v3, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/overmind/server/pm/MindPackage$ProviderIntentInfo;

    .line 32
    iput-object v3, v4, Lcom/xinzhu/overmind/server/pm/MindPackage$ProviderIntentInfo;->h:Lcom/xinzhu/overmind/server/pm/MindPackage$g;

    goto :goto_5

    .line 33
    :cond_4
    iput-object p0, v3, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 34
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 35
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->d:Ljava/util/ArrayList;

    .line 36
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Service;

    .line 37
    new-instance v2, Lcom/xinzhu/overmind/server/pm/MindPackage$h;

    invoke-direct {v2, v1}, Lcom/xinzhu/overmind/server/pm/MindPackage$h;-><init>(Landroid/content/pm/PackageParser$Service;)V

    .line 38
    iget-object v1, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;

    .line 39
    iput-object v2, v3, Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;->h:Lcom/xinzhu/overmind/server/pm/MindPackage$h;

    goto :goto_7

    .line 40
    :cond_6
    iput-object p0, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 41
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 42
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->e:Ljava/util/ArrayList;

    .line 43
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Instrumentation;

    .line 44
    new-instance v2, Lcom/xinzhu/overmind/server/pm/MindPackage$d;

    invoke-direct {v2, v1}, Lcom/xinzhu/overmind/server/pm/MindPackage$d;-><init>(Landroid/content/pm/PackageParser$Instrumentation;)V

    .line 45
    iput-object p0, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 46
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 47
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->f:Ljava/util/ArrayList;

    .line 48
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Permission;

    .line 49
    new-instance v2, Lcom/xinzhu/overmind/server/pm/MindPackage$e;

    invoke-direct {v2, v1}, Lcom/xinzhu/overmind/server/pm/MindPackage$e;-><init>(Landroid/content/pm/PackageParser$Permission;)V

    .line 50
    iput-object p0, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 51
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 52
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->g:Ljava/util/ArrayList;

    .line 53
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 54
    new-instance v2, Lcom/xinzhu/overmind/server/pm/MindPackage$f;

    invoke-direct {v2, v1}, Lcom/xinzhu/overmind/server/pm/MindPackage$f;-><init>(Landroid/content/pm/PackageParser$PermissionGroup;)V

    .line 55
    iput-object p0, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 56
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 57
    :cond_a
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->h:Ljava/util/ArrayList;

    .line 58
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->t()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 59
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->j:Landroid/content/pm/PackageParser$SigningDetails;

    .line 60
    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->i:[Landroid/content/pm/Signature;

    goto :goto_b

    .line 61
    :cond_b
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->i:[Landroid/content/pm/Signature;

    .line 62
    :goto_b
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->k:Landroid/os/Bundle;

    .line 63
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 64
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    iput v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->n:I

    .line 65
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->o:Ljava/lang/String;

    .line 66
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->p:Ljava/util/ArrayList;

    .line 67
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->q:Ljava/util/ArrayList;

    .line 68
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->r:I

    .line 69
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    .line 70
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->t:Ljava/lang/String;

    .line 71
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_c

    .line 72
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->u:[Ljava/lang/String;

    .line 73
    :cond_c
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->v:Ljava/lang/String;

    .line 74
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    iput v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->w:I

    .line 75
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->x:Ljava/util/ArrayList;

    .line 76
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->y:Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->a:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->b:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->c:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->d:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->e:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->f:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->g:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->h:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->x:Ljava/util/ArrayList;

    .line 87
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->y:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->a:Ljava/util/ArrayList;

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    .line 90
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    invoke-direct {v0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackage$b;-><init>(Landroid/os/Parcel;)V

    .line 91
    iget-object v3, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;

    .line 92
    iput-object v0, v4, Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;->h:Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    goto :goto_1

    .line 93
    :cond_0
    iput-object p0, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 94
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 96
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->b:Ljava/util/ArrayList;

    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_3

    .line 97
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    invoke-direct {v0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackage$b;-><init>(Landroid/os/Parcel;)V

    .line 98
    iget-object v3, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;

    .line 99
    iput-object v0, v4, Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;->h:Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    goto :goto_3

    .line 100
    :cond_2
    iput-object p0, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 101
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_2

    .line 102
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->c:Ljava/util/ArrayList;

    :goto_4
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_5

    .line 104
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackage$g;

    invoke-direct {v0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackage$g;-><init>(Landroid/os/Parcel;)V

    .line 105
    iget-object v3, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$g;->f:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 106
    iget-object v4, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$g;->f:Landroid/content/pm/ProviderInfo;

    aget-object v3, v3, v1

    iput-object v3, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 107
    iget-object v3, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/overmind/server/pm/MindPackage$ProviderIntentInfo;

    .line 108
    iput-object v0, v4, Lcom/xinzhu/overmind/server/pm/MindPackage$ProviderIntentInfo;->h:Lcom/xinzhu/overmind/server/pm/MindPackage$g;

    goto :goto_5

    .line 109
    :cond_4
    iput-object p0, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 110
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_4

    .line 111
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->d:Ljava/util/ArrayList;

    :goto_6
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_7

    .line 113
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackage$h;

    invoke-direct {v0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackage$h;-><init>(Landroid/os/Parcel;)V

    .line 114
    iget-object v3, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;

    .line 115
    iput-object v0, v4, Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;->h:Lcom/xinzhu/overmind/server/pm/MindPackage$h;

    goto :goto_7

    .line 116
    :cond_6
    iput-object p0, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 117
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_6

    .line 118
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->e:Ljava/util/ArrayList;

    :goto_8
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_8

    .line 120
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackage$d;

    invoke-direct {v0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackage$d;-><init>(Landroid/os/Parcel;)V

    .line 121
    iput-object p0, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 122
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_8

    .line 123
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->f:Ljava/util/ArrayList;

    :goto_9
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_9

    .line 125
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackage$e;

    invoke-direct {v0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackage$e;-><init>(Landroid/os/Parcel;)V

    .line 126
    iput-object p0, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 127
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_9

    .line 128
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->g:Ljava/util/ArrayList;

    :goto_a
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_a

    .line 130
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackage$f;

    invoke-direct {v0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackage$f;-><init>(Landroid/os/Parcel;)V

    .line 131
    iput-object p0, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 132
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_a

    .line 133
    :cond_a
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 134
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->t()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 135
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    const-string v0, "MindPackage$SigningDetails"

    .line 138
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 139
    sget-object v0, Lcom/xinzhu/overmind/server/pm/MindPackage;->z:Ljava/lang/String;

    const-string v2, "Legacy signing details found, solve it"

    invoke-static {v0, v2}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-class v0, Lcom/xinzhu/overmind/server/pm/MindPackage$SigningDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xinzhu/overmind/server/pm/MindPackage$SigningDetails;

    .line 141
    iget-object v0, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$SigningDetails;->a:[Landroid/content/pm/Signature;

    invoke-static {v0, v1}, Lcom/xinzhu/haunted/android/content/pm/i$a;->m([Landroid/content/pm/Signature;I)Lcom/xinzhu/haunted/android/content/pm/i$a;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/xinzhu/haunted/android/content/pm/i$a;

    iget-object v0, v0, Lcom/xinzhu/haunted/android/content/pm/i$a;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->j:Landroid/content/pm/PackageParser$SigningDetails;

    goto :goto_b

    .line 142
    :cond_b
    const-class v0, Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->j:Landroid/content/pm/PackageParser$SigningDetails;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_b

    :catchall_0
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    :cond_c
    :goto_b
    sget-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->i:[Landroid/content/pm/Signature;

    .line 145
    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->k:Landroid/os/Bundle;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->n:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->o:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->p:Ljava/util/ArrayList;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->q:Ljava/util/ArrayList;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->r:I

    .line 152
    const-class v0, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->t:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->v:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->w:I

    .line 156
    sget-object v0, Landroid/content/pm/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->x:Ljava/util/ArrayList;

    .line 157
    sget-object v0, Landroid/content/pm/FeatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->y:Ljava/util/ArrayList;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 159
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appendVersion"

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->u:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_d
    return-void

    .line 163
    :catchall_1
    :cond_e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->q:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    .line 4
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 6
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$b;->f:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_0

    .line 10
    iget-object v2, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    move v2, v3

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    .line 15
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 17
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$b;->f:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 18
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 19
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 20
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_3

    .line 21
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    move v3, v4

    goto :goto_3

    .line 22
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 23
    :cond_5
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 24
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackage$g;

    .line 26
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 28
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$g;->f:Landroid/content/pm/ProviderInfo;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 29
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    .line 30
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 31
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_6

    .line 32
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    move v3, v4

    goto :goto_5

    .line 33
    :cond_7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 34
    :cond_8
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackage$h;

    .line 37
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 39
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$h;->f:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 40
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_a

    .line 41
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 42
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_9

    .line 43
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    move v3, v4

    goto :goto_7

    .line 44
    :cond_a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 45
    :cond_b
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackage$d;

    .line 48
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 50
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$d;->f:Landroid/content/pm/InstrumentationInfo;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 51
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_d

    .line 52
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 53
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_c

    .line 54
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    move v3, v4

    goto :goto_9

    .line 55
    :cond_d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 56
    :cond_e
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackage$e;

    .line 59
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 61
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$e;->f:Landroid/content/pm/PermissionInfo;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 62
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_10

    .line 63
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 64
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_f

    .line 65
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    move v3, v4

    goto :goto_b

    .line 66
    :cond_10
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 67
    :cond_11
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackage$f;

    .line 70
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 72
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$f;->f:Landroid/content/pm/PermissionGroupInfo;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 73
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_13

    .line 74
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 75
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_12

    .line 76
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    move v3, v4

    goto :goto_d

    .line 77
    :cond_13
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 78
    :cond_14
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 79
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->t()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 80
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->j:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 81
    :cond_15
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->i:[Landroid/content/pm/Signature;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 82
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->k:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 83
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->p:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 87
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 88
    iget v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->r:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 90
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->t:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->v:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->w:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->x:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 94
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->y:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const-string p2, "appendVersion"

    .line 95
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 96
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->u:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
