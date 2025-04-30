.class public Lcom/join/mgps/dto/ArchiveRecordDataBean;
.super Ljava/lang/Object;
.source "ArchiveRecordDataBean.java"


# instance fields
.field private add_time:J

.field private iconFile:Ljava/lang/String;

.field private icon_src:Ljava/lang/String;

.field private is_first:Z

.field private recordFile:Ljava/lang/String;

.field private rid:I

.field private role_name:Ljava/lang/String;

.field private update_count:I

.field private update_time:J

.field private world_score:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdd_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ArchiveRecordDataBean;->add_time:J

    return-wide v0
.end method

.method public getRid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArchiveRecordDataBean;->rid:I

    return v0
.end method

.method public setRid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArchiveRecordDataBean;->rid:I

    return-void
.end method
