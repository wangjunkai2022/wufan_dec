.class public Lcom/join/mgps/dto/GoldFingerBean;
.super Ljava/lang/Object;
.source "GoldFingerBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/GoldFingerBean$ContentBean;
    }
.end annotation


# instance fields
.field private content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GoldFingerBean$ContentBean;",
            ">;"
        }
    .end annotation
.end field

.field private isSelected:Z

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/dto/GoldFingerBean;->isSelected:Z

    return-void
.end method


# virtual methods
.method public getContent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GoldFingerBean$ContentBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GoldFingerBean;->content:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GoldFingerBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/GoldFingerBean;->isSelected:Z

    return v0
.end method

.method public setContent(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GoldFingerBean$ContentBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GoldFingerBean;->content:Ljava/util/List;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/GoldFingerBean;->isSelected:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GoldFingerBean;->title:Ljava/lang/String;

    return-void
.end method
