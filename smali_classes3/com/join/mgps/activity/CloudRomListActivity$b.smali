.class public Lcom/join/mgps/activity/CloudRomListActivity$b;
.super Ljava/lang/Object;
.source "CloudRomListActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/CloudRomListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CloudRomListActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/CloudRomListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CloudRomListActivity$b;->a:Lcom/join/mgps/activity/CloudRomListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 1
    check-cast p1, Lcom/join/mgps/dto/RomArchived;

    .line 2
    check-cast p2, Lcom/join/mgps/dto/RomArchived;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/RomArchived;->getArchivedTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/join/mgps/dto/RomArchived;->getArchivedTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/RomArchived;->getArchivedTime()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/join/mgps/dto/RomArchived;->getArchivedTime()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
