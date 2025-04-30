.class public final Lcom/xinzhu/overmind/server/user/MindUserHandle;
.super Ljava/lang/Object;
.source "MindUserHandle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xinzhu/overmind/server/user/MindUserHandle;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:I = 0x186a0

.field public static final c:I = -0x1

.field public static final d:Lcom/xinzhu/overmind/server/user/MindUserHandle;

.field public static final e:I = -0x2

.field public static final f:Lcom/xinzhu/overmind/server/user/MindUserHandle;

.field public static final g:I = -0x3

.field public static final h:I = -0x4

.field public static final i:Lcom/xinzhu/overmind/server/user/MindUserHandle;

.field public static final j:I = -0x2710

.field public static final k:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final l:Lcom/xinzhu/overmind/server/user/MindUserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final m:I = 0x0

.field public static final n:I = 0x0

.field public static final o:Lcom/xinzhu/overmind/server/user/MindUserHandle;

.field public static final p:Z = true

.field public static final q:I = -0x1

.field public static final r:I = 0x0

.field public static final s:I = 0x2710

.field public static final t:I = 0x4e1f

.field public static final u:I = 0xc350

.field public static final v:I = 0x4e20


# instance fields
.field final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;-><init>(I)V

    sput-object v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->d:Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;-><init>(I)V

    sput-object v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->f:Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 3
    new-instance v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;-><init>(I)V

    sput-object v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->i:Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 4
    new-instance v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;-><init>(I)V

    sput-object v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->l:Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 5
    new-instance v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;

    invoke-direct {v0, v1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;-><init>(I)V

    sput-object v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->o:Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 6
    new-instance v0, Lcom/xinzhu/overmind/server/user/MindUserHandle$a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle$a;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "h"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a:I

    return-void
.end method

.method public static a(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    const v0, 0x186a0

    .line 1
    rem-int/2addr p0, v0

    return p0
.end method

.method public static b(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result v0

    invoke-static {p0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    move-result p0

    invoke-static {v0, p0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->c(II)I

    move-result p0

    return p0
.end method

.method public static c(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "appId"
        }
    .end annotation

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    const/16 v1, 0x4e1f

    if-gt p1, v1, :cond_0

    sub-int/2addr p1, v0

    add-int/lit16 p1, p1, 0x4e20

    .line 1
    invoke-static {p0, p1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->h(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static d()I
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    move-result v0

    return v0
.end method

.method public static e()I
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result v0

    return v0
.end method

.method public static f(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result v0

    invoke-static {p0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    move-result p0

    invoke-static {v0, p0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->g(II)I

    move-result p0

    return p0
.end method

.method public static g(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "appId"
        }
    .end annotation

    const/16 p0, 0x2710

    if-lt p1, p0, :cond_0

    const/16 v0, 0x4e1f

    if-gt p1, v0, :cond_0

    sub-int/2addr p1, p0

    const p0, 0xc350

    add-int/2addr p1, p0

    return p1

    :cond_0
    if-ltz p1, :cond_1

    if-gt p1, p0, :cond_1

    return p1

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static h(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "appId"
        }
    .end annotation

    const v0, 0x186a0

    mul-int p0, p0, v0

    .line 1
    rem-int/2addr p1, v0

    add-int/2addr p0, p1

    return p0
.end method

.method public static i(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    const/16 v0, 0x270d

    .line 1
    invoke-static {p0, v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->h(II)I

    move-result p0

    return p0
.end method

.method public static j(I)Lcom/xinzhu/overmind/server/user/MindUserHandle;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result p0

    invoke-static {p0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->t(I)Lcom/xinzhu/overmind/server/user/MindUserHandle;

    move-result-object p0

    return-object p0
.end method

.method public static k(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    const v0, 0x186a0

    .line 1
    div-int/2addr p0, v0

    return p0
.end method

.method public static l(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    const/4 v0, 0x0

    if-lez p0, :cond_0

    .line 1
    invoke-static {p0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    move-result p0

    const/16 v1, 0x2710

    if-lt p0, v1, :cond_0

    const/16 v1, 0x4e1f

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static n(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    .line 1
    invoke-static {p0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    move-result p0

    const/16 v1, 0x2710

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static p(II)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid1",
            "uid2"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    move-result v0

    invoke-static {p1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x3e8

    if-eq p0, v1, :cond_2

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    .line 2
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq p0, v1, :cond_4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p0

    if-ne p1, p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_1
    return v2
.end method

.method public static q(II)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid1",
            "uid2"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result p0

    invoke-static {p1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static s()I
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result v0

    return v0
.end method

.method public static t(I)Lcom/xinzhu/overmind/server/user/MindUserHandle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->o:Lcom/xinzhu/overmind/server/user/MindUserHandle;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;

    invoke-direct {v0, p0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;-><init>(I)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static u(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg"
        }
    .end annotation

    const-string v0, "all"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    goto :goto_1

    :cond_0
    const-string v0, "current"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cur"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad user number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 p0, -0x2

    :goto_1
    return p0
.end method

.method public static v(Landroid/os/Parcel;)Lcom/xinzhu/overmind/server/user/MindUserHandle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/16 v0, -0x2710

    if-eq p0, v0, :cond_0

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;

    invoke-direct {v0, p0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static y(Lcom/xinzhu/overmind/server/user/MindUserHandle;Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "h",
            "out"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/16 p0, -0x2710

    .line 2
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    check-cast p1, Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 2
    iget v1, p0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a:I

    iget p1, p1, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public getIdentifier()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a:I

    return v0
.end method

.method public o()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->l:Lcom/xinzhu/overmind/server/user/MindUserHandle;

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->o:Lcom/xinzhu/overmind/server/user/MindUserHandle;

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserHandle{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Landroid/os/UserHandle;
    .locals 1

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a:I

    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/u;->c(I)Lcom/xinzhu/haunted/android/os/u;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/xinzhu/haunted/android/os/u;->a:Ljava/lang/Object;

    check-cast v0, Landroid/os/UserHandle;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "flags"
        }
    .end annotation

    .line 1
    iget p2, p0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
