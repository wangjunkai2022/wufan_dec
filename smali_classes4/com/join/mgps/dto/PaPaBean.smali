.class public Lcom/join/mgps/dto/PaPaBean;
.super Ljava/lang/Object;
.source "PaPaBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;
    }
.end annotation


# static fields
.field public static final KEY_IMAGE_HEADER_HEIGHT:Ljava/lang/String; = "key_image_header_height"


# instance fields
.field private mImageHeaderParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private type:I

.field private typeValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dto/PaPaBean;->mImageHeaderParams:Ljava/util/HashMap;

    return-void
.end method

.method public static getTypes()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->values()[Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    move-result-object v0

    array-length v0, v0

    return v0
.end method


# virtual methods
.method public getImageHeaderParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaPaBean;->mImageHeaderParams:Ljava/util/HashMap;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PaPaBean;->type:I

    return v0
.end method

.method public getTypeValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaPaBean;->typeValue:Ljava/lang/Object;

    return-object v0
.end method

.method public setImageHeaderParams(Ljava/util/HashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaPaBean;->mImageHeaderParams:Ljava/util/HashMap;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PaPaBean;->type:I

    return-void
.end method

.method public setTypeValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaPaBean;->typeValue:Ljava/lang/Object;

    return-void
.end method
