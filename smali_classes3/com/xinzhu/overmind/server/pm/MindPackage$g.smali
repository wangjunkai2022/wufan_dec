.class public final Lcom/xinzhu/overmind/server/pm/MindPackage$g;
.super Lcom/xinzhu/overmind/server/pm/MindPackage$c;
.source "MindPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/pm/MindPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xinzhu/overmind/server/pm/MindPackage$c<",
        "Lcom/xinzhu/overmind/server/pm/MindPackage$ProviderIntentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public f:Landroid/content/pm/ProviderInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$Provider;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provider"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackage$c;-><init>(Landroid/content/pm/PackageParser$Component;)V

    .line 2
    iget-object v0, p1, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$g;->f:Landroid/content/pm/ProviderInfo;

    .line 3
    iget-object v0, p1, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    .line 6
    iget-object p1, p1, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .line 7
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    new-instance v2, Lcom/xinzhu/overmind/server/pm/MindPackage$ProviderIntentInfo;

    invoke-direct {v2, v0}, Lcom/xinzhu/overmind/server/pm/MindPackage$ProviderIntentInfo;-><init>(Landroid/content/pm/PackageParser$IntentInfo;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parcel"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackage$c;-><init>(Landroid/os/Parcel;)V

    .line 9
    const-class v0, Landroid/content/pm/ProviderInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$g;->f:Landroid/content/pm/ProviderInfo;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 12
    const-class v0, Lcom/xinzhu/overmind/server/pm/MindPackage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;

    .line 13
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    new-instance v3, Lcom/xinzhu/overmind/server/pm/MindPackage$ProviderIntentInfo;

    invoke-direct {v3, v0}, Lcom/xinzhu/overmind/server/pm/MindPackage$ProviderIntentInfo;-><init>(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method
