.class public Lcom/join/mgps/db/tables/DownloadHistoryTable;
.super Ljava/lang/Object;
.source "DownloadHistoryTable.java"


# instance fields
.field private crc_link_type_val:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private create_time:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/join/mgps/db/tables/DownloadHistoryTable;->create_time:J

    .line 4
    iput-object p3, p0, Lcom/join/mgps/db/tables/DownloadHistoryTable;->crc_link_type_val:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCrc_link_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/DownloadHistoryTable;->crc_link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getCreate_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/db/tables/DownloadHistoryTable;->create_time:J

    return-wide v0
.end method

.method public setCrc_link_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/DownloadHistoryTable;->crc_link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setCreate_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/db/tables/DownloadHistoryTable;->create_time:J

    return-void
.end method
