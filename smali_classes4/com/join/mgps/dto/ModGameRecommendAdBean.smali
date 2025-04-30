.class public Lcom/join/mgps/dto/ModGameRecommendAdBean;
.super Ljava/lang/Object;
.source "ModGameRecommendAdBean.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/join/mgps/dto/ModGameRecommendAdBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private panel:Ljava/lang/String;

.field private popup:Z

.field private rec_game_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ModGameRecommendAdBean$1;

    invoke-direct {v0}, Lcom/join/mgps/dto/ModGameRecommendAdBean$1;-><init>()V

    sput-object v0, Lcom/join/mgps/dto/ModGameRecommendAdBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/join/mgps/dto/ModGameRecommendAdBean;->popup:Z

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/dto/ModGameRecommendAdBean;->panel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPanel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModGameRecommendAdBean;->panel:Ljava/lang/String;

    return-object v0
.end method

.method public getRec_game_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModGameRecommendAdBean;->rec_game_list:Ljava/util/List;

    return-object v0
.end method

.method public isPopup()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ModGameRecommendAdBean;->popup:Z

    return v0
.end method

.method public setPanel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModGameRecommendAdBean;->panel:Ljava/lang/String;

    return-void
.end method

.method public setPopup(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ModGameRecommendAdBean;->popup:Z

    return-void
.end method

.method public setRec_game_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModGameRecommendAdBean;->rec_game_list:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/join/mgps/dto/ModGameRecommendAdBean;->popup:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2
    iget-object p2, p0, Lcom/join/mgps/dto/ModGameRecommendAdBean;->panel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
