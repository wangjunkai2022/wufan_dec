.class public final Lcom/sina/weibo/sdk/auth/AuthInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sina/weibo/sdk/auth/AuthInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x591ce065a7f53079L


# instance fields
.field private app_key:Ljava/lang/String;

.field private hash:Ljava/lang/String;

.field private package_name:Ljava/lang/String;

.field private redirect_url:Ljava/lang/String;

.field private scope:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/sina/weibo/sdk/auth/AuthInfo$1;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/auth/AuthInfo$1;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/auth/AuthInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->app_key:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->redirect_url:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->scope:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->package_name:Ljava/lang/String;

    .line 6
    invoke-static {p1, p2}, Lcom/sina/weibo/sdk/b/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->hash:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->app_key:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->redirect_url:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->scope:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->package_name:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->hash:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAppKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->app_key:Ljava/lang/String;

    return-object v0
.end method

.method public final getHash()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public final getRedirectUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->redirect_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getScope()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->app_key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->redirect_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->scope:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->package_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->hash:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
