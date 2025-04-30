.class public Lcom/xinzhu/overmind/server/os/g;
.super Lcom/xinzhu/overmind/server/os/c$b;
.source "MindNotificationManagerService.java"

# interfaces
.implements Lcom/xinzhu/overmind/server/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/os/g$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static sService:Lcom/xinzhu/overmind/server/os/g;


# instance fields
.field cached_notifications:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/xinzhu/overmind/server/os/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/xinzhu/overmind/server/os/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xinzhu/overmind/server/os/g;->TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/server/os/g;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/os/g;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/server/os/g;->sService:Lcom/xinzhu/overmind/server/os/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/os/c$b;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/os/g;->cached_notifications:Ljava/util/HashSet;

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/os/g;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public static get()Lcom/xinzhu/overmind/server/os/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/os/g;->sService:Lcom/xinzhu/overmind/server/os/g;

    return-object v0
.end method


# virtual methods
.method public solveAddNotification(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pkgName",
            "userId",
            "id",
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/os/g;->cached_notifications:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/os/g$a;

    .line 2
    iget-object v2, v1, Lcom/xinzhu/overmind/server/os/g$a;->d:Ljava/lang/String;

    invoke-static {v2, p4}, Lcom/xinzhu/overmind/utils/wrappers/ObjectsWrapper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/xinzhu/overmind/server/os/g$a;->c:I

    if-ne v2, p3, :cond_0

    iget-object v2, v1, Lcom/xinzhu/overmind/server/os/g$a;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/xinzhu/overmind/server/os/g$a;->b:I

    if-ne v2, p2, :cond_0

    .line 4
    iget-object p1, v1, Lcom/xinzhu/overmind/server/os/g$a;->e:Ljava/lang/String;

    return-object p1

    .line 5
    :cond_1
    sget-object v0, Lcom/xinzhu/overmind/server/os/g;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CachedNotificationInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v0, Lcom/xinzhu/overmind/server/os/g$a;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/os/g$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/xinzhu/overmind/server/os/g;->cached_notifications:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, v0, Lcom/xinzhu/overmind/server/os/g$a;->e:Ljava/lang/String;

    return-object p1
.end method

.method public solveCancelAllNotifications(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pkgName",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/os/g;->cached_notifications:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/os/g$a;

    .line 2
    iget-object v2, v1, Lcom/xinzhu/overmind/server/os/g$a;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/xinzhu/overmind/server/os/g$a;->b:I

    if-ne v2, p2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/xinzhu/overmind/server/os/g;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v3, v1, Lcom/xinzhu/overmind/server/os/g$a;->e:Ljava/lang/String;

    iget v4, v1, Lcom/xinzhu/overmind/server/os/g$a;->c:I

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 4
    iget-object v2, p0, Lcom/xinzhu/overmind/server/os/g;->cached_notifications:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public solveCancelNotification(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pkgName",
            "userId",
            "id",
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/os/g;->cached_notifications:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/os/g$a;

    .line 2
    iget-object v2, v1, Lcom/xinzhu/overmind/server/os/g$a;->d:Ljava/lang/String;

    invoke-static {v2, p4}, Lcom/xinzhu/overmind/utils/wrappers/ObjectsWrapper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/xinzhu/overmind/server/os/g$a;->c:I

    if-ne v2, p3, :cond_0

    iget-object v2, v1, Lcom/xinzhu/overmind/server/os/g$a;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/xinzhu/overmind/server/os/g$a;->b:I

    if-ne v2, p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/xinzhu/overmind/server/os/g;->cached_notifications:Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, v1, Lcom/xinzhu/overmind/server/os/g$a;->e:Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method
