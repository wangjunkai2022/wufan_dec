.class public Lcom/join/mgps/dto/MainLabelBean$TagType;
.super Ljava/lang/Object;
.source "MainLabelBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/MainLabelBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TagType"
.end annotation


# instance fields
.field private type_id:I

.field private type_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/MainLabelBean$TagType;->type_id:I

    return v0
.end method

.method public getType_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MainLabelBean$TagType;->type_name:Ljava/lang/String;

    return-object v0
.end method

.method public setType_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/MainLabelBean$TagType;->type_id:I

    return-void
.end method

.method public setType_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MainLabelBean$TagType;->type_name:Ljava/lang/String;

    return-void
.end method
