.class public Lcom/join/mgps/dto/StandaloneCloudArchive;
.super Ljava/lang/Object;
.source "StandaloneCloudArchive.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private last_enter_main_page_time:J

.field private location_at:Ljava/lang/Integer;

.field private tag_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ModGameArchiveTagBean;",
            ">;"
        }
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
.method public getLast_enter_main_page_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/StandaloneCloudArchive;->last_enter_main_page_time:J

    return-wide v0
.end method

.method public getLocation_at()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/StandaloneCloudArchive;->location_at:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTag_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ModGameArchiveTagBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/StandaloneCloudArchive;->tag_list:Ljava/util/List;

    return-object v0
.end method

.method public setLast_enter_main_page_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/StandaloneCloudArchive;->last_enter_main_page_time:J

    return-void
.end method

.method public setLocation_at(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/StandaloneCloudArchive;->location_at:Ljava/lang/Integer;

    return-void
.end method

.method public setTag_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ModGameArchiveTagBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/StandaloneCloudArchive;->tag_list:Ljava/util/List;

    return-void
.end method
