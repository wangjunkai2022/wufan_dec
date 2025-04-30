.class public Lcom/xinzhu/overmind/server/pm/g;
.super Lcom/xinzhu/overmind/server/pm/c$b;
.source "MindPackageInstallerService.java"

# interfaces
.implements Lcom/xinzhu/overmind/server/c;


# static fields
.field public static final TAG:Ljava/lang/String; = "MindPackageInstallerService"

.field private static sService:Lcom/xinzhu/overmind/server/pm/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/pm/g;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/pm/g;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/server/pm/g;->sService:Lcom/xinzhu/overmind/server/pm/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/pm/c$b;-><init>()V

    return-void
.end method

.method public static get()Lcom/xinzhu/overmind/server/pm/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/g;->sService:Lcom/xinzhu/overmind/server/pm/g;

    return-object v0
.end method


# virtual methods
.method public installPackageAsExist(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;I)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ps",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/xinzhu/overmind/server/pm/installer/c;

    invoke-direct {v1}, Lcom/xinzhu/overmind/server/pm/installer/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c:Lcom/xinzhu/overmind/entity/pm/InstallOption;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/pm/installer/d;

    .line 5
    invoke-interface {v2, p1, v1, p2}, Lcom/xinzhu/overmind/server/pm/installer/d;->a(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)I

    move-result v3

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installPackageAsUser_Storage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exec: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MindPackageInstallerService"

    invoke-static {v4, v2}, Lcom/xinzhu/overmind/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    return v3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public installPackageAsUser(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;I)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ps",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/xinzhu/overmind/server/pm/installer/c;

    invoke-direct {v1}, Lcom/xinzhu/overmind/server/pm/installer/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcom/xinzhu/overmind/server/pm/installer/b;

    invoke-direct {v1}, Lcom/xinzhu/overmind/server/pm/installer/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/xinzhu/overmind/server/pm/installer/a;

    invoke-direct {v1}, Lcom/xinzhu/overmind/server/pm/installer/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c:Lcom/xinzhu/overmind/entity/pm/InstallOption;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/pm/installer/d;

    .line 7
    invoke-interface {v2, p1, v1, p2}, Lcom/xinzhu/overmind/server/pm/installer/d;->a(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)I

    move-result v3

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installPackageAsUser_Storage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exec: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MindPackageInstallerService"

    invoke-static {v4, v2}, Lcom/xinzhu/overmind/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    return v3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method

.method public uninstallPackageAsUser(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;ZI)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ps",
            "removeApp",
            "userId"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    new-instance p2, Lcom/xinzhu/overmind/server/pm/installer/e;

    invoke-direct {p2}, Lcom/xinzhu/overmind/server/pm/installer/e;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    new-instance p2, Lcom/xinzhu/overmind/server/pm/installer/f;

    invoke-direct {p2}, Lcom/xinzhu/overmind/server/pm/installer/f;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p2, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c:Lcom/xinzhu/overmind/entity/pm/InstallOption;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/pm/installer/d;

    .line 6
    invoke-interface {v1, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/installer/d;->a(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)I

    move-result v2

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uninstallPackageAsUser: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " exec: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MindPackageInstallerService"

    invoke-static {v3, v1}, Lcom/xinzhu/overmind/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public updatePackage(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ps"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/xinzhu/overmind/server/pm/installer/b;

    invoke-direct {v1}, Lcom/xinzhu/overmind/server/pm/installer/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcom/xinzhu/overmind/server/pm/installer/a;

    invoke-direct {v1}, Lcom/xinzhu/overmind/server/pm/installer/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c:Lcom/xinzhu/overmind/entity/pm/InstallOption;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/pm/installer/d;

    const/4 v3, -0x1

    .line 6
    invoke-interface {v2, p1, v1, v3}, Lcom/xinzhu/overmind/server/pm/installer/d;->a(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)I

    move-result v3

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePackage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exec: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MindPackageInstallerService"

    invoke-static {v4, v2}, Lcom/xinzhu/overmind/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    return v3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
