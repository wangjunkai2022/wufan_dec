.class Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;
.super Ljava/lang/Object;
.source "MindAccountManagerService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UidGrant"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant$a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant$a;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/accounts/Account;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "authTokenType",
            "account"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;->a:I

    .line 3
    iput-object p2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;->c:Landroid/accounts/Account;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;->a:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;->b:Ljava/lang/String;

    .line 8
    const-class v0, Landroid/accounts/Account;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    iput-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;->c:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
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
    iget v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;->c:Landroid/accounts/Account;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
