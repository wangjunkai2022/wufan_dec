.class public Lcom/join/mgps/db/tables/TokenTable;
.super Ljava/lang/Object;
.source "TokenTable.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "token_table"
.end annotation


# instance fields
.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field public token:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public uid:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/TokenTable;->id:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/TokenTable;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/db/tables/TokenTable;->uid:J

    return-wide v0
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/TokenTable;->id:I

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/TokenTable;->token:Ljava/lang/String;

    return-void
.end method

.method public setUid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/db/tables/TokenTable;->uid:J

    return-void
.end method
