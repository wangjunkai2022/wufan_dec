.class public Lcom/join/mgps/db/tables/ForumSearchRecordTable;
.super Ljava/lang/Object;
.source "ForumSearchRecordTable.java"


# instance fields
.field private create_time:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private name:Ljava/lang/String;
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
.method public getCreate_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/db/tables/ForumSearchRecordTable;->create_time:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/ForumSearchRecordTable;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/ForumSearchRecordTable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setCreate_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/db/tables/ForumSearchRecordTable;->create_time:J

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/ForumSearchRecordTable;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/ForumSearchRecordTable;->name:Ljava/lang/String;

    return-void
.end method
