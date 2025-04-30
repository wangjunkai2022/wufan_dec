.class public Lcom/join/mgps/dto/APKVersionRequestargs;
.super Ljava/lang/Object;
.source "APKVersionRequestargs.java"


# instance fields
.field private plugin:I

.field private tag_id:I

.field private target_version:I

.field private type:I

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/APKVersionRequestargs;->type:I

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/APKVersionRequestargs;->plugin:I

    .line 5
    iput p3, p0, Lcom/join/mgps/dto/APKVersionRequestargs;->tag_id:I

    .line 6
    iput p4, p0, Lcom/join/mgps/dto/APKVersionRequestargs;->target_version:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/join/mgps/dto/APKVersionRequestargs;->type:I

    .line 9
    iput p2, p0, Lcom/join/mgps/dto/APKVersionRequestargs;->plugin:I

    .line 10
    iput p3, p0, Lcom/join/mgps/dto/APKVersionRequestargs;->tag_id:I

    .line 11
    iput p4, p0, Lcom/join/mgps/dto/APKVersionRequestargs;->target_version:I

    .line 12
    iput p5, p0, Lcom/join/mgps/dto/APKVersionRequestargs;->uid:I

    return-void
.end method


# virtual methods
.method public getPlugin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/APKVersionRequestargs;->plugin:I

    return v0
.end method

.method public getTag_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/APKVersionRequestargs;->tag_id:I

    return v0
.end method

.method public getTarget_version()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/APKVersionRequestargs;->target_version:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/APKVersionRequestargs;->type:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/APKVersionRequestargs;->uid:I

    return v0
.end method

.method public setPlugin(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/APKVersionRequestargs;->plugin:I

    return-void
.end method

.method public setTag_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/APKVersionRequestargs;->tag_id:I

    return-void
.end method

.method public setTarget_version(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/APKVersionRequestargs;->target_version:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/APKVersionRequestargs;->type:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/APKVersionRequestargs;->uid:I

    return-void
.end method
