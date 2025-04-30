.class public final Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;
.super Ljava/lang/Object;
.source "VolcanoEventTab.kt"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "volcano_event_tab"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008K\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00d1\u0001\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010)\u001a\u00020\u0016\u00a2\u0006\u0004\u0008_\u0010`J\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0004\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0008\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010\t\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010\n\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u000b\u001a\u00020\u0002H\u00c6\u0003J\u000b\u0010\u000c\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0016H\u00c6\u0003J\u00d3\u0001\u0010*\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00072\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00022\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010)\u001a\u00020\u0016H\u00c6\u0001J\t\u0010+\u001a\u00020\u0007H\u00d6\u0001J\t\u0010,\u001a\u00020\u0002H\u00d6\u0001J\u0013\u0010.\u001a\u00020\u00162\u0008\u0010-\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\"\u0010\u0019\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010/\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R$\u0010$\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u00104\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R$\u0010%\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u00104\u001a\u0004\u00089\u00106\"\u0004\u0008:\u00108R\"\u0010)\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010;\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R\"\u0010\u001a\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010@\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR$\u0010\u001f\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u00104\u001a\u0004\u0008E\u00106\"\u0004\u0008F\u00108R$\u0010 \u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u00104\u001a\u0004\u0008G\u00106\"\u0004\u0008H\u00108R$\u0010!\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u00104\u001a\u0004\u0008I\u00106\"\u0004\u0008J\u00108R$\u0010(\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u00104\u001a\u0004\u0008K\u00106\"\u0004\u0008L\u00108R\"\u0010\u001d\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010@\u001a\u0004\u0008M\u0010B\"\u0004\u0008N\u0010DR$\u0010#\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u00104\u001a\u0004\u0008O\u00106\"\u0004\u0008P\u00108R$\u0010\'\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u00104\u001a\u0004\u0008Q\u00106\"\u0004\u0008R\u00108R\"\u0010\u001b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u00104\u001a\u0004\u0008S\u00106\"\u0004\u0008T\u00108R$\u0010\u001c\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u00104\u001a\u0004\u0008U\u00106\"\u0004\u0008V\u00108R\"\u0010\u001e\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010/\u001a\u0004\u0008W\u00101\"\u0004\u0008X\u00103R$\u0010&\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u00104\u001a\u0004\u0008Y\u00106\"\u0004\u0008Z\u00108R\"\u0010\u0018\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010/\u001a\u0004\u0008[\u00101\"\u0004\u0008\\\u00103R$\u0010\"\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u00104\u001a\u0004\u0008]\u00106\"\u0004\u0008^\u00108\u00a8\u0006a"
    }
    d2 = {
        "Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;",
        "",
        "",
        "component1",
        "component2",
        "",
        "component3",
        "",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "",
        "component18",
        "id",
        "repeatNumber",
        "bhv_time",
        "bhv_type",
        "goods_id",
        "user_id",
        "user_type",
        "scm",
        "spm",
        "trans_data",
        "req_id",
        "ip",
        "client_version",
        "device_model",
        "network",
        "os_version",
        "device_id",
        "net_game",
        "copy",
        "toString",
        "hashCode",
        "other",
        "equals",
        "I",
        "getRepeatNumber",
        "()I",
        "setRepeatNumber",
        "(I)V",
        "Ljava/lang/String;",
        "getClient_version",
        "()Ljava/lang/String;",
        "setClient_version",
        "(Ljava/lang/String;)V",
        "getDevice_model",
        "setDevice_model",
        "Z",
        "getNet_game",
        "()Z",
        "setNet_game",
        "(Z)V",
        "J",
        "getBhv_time",
        "()J",
        "setBhv_time",
        "(J)V",
        "getScm",
        "setScm",
        "getSpm",
        "setSpm",
        "getTrans_data",
        "setTrans_data",
        "getDevice_id",
        "setDevice_id",
        "getUser_id",
        "setUser_id",
        "getIp",
        "setIp",
        "getOs_version",
        "setOs_version",
        "getBhv_type",
        "setBhv_type",
        "getGoods_id",
        "setGoods_id",
        "getUser_type",
        "setUser_type",
        "getNetwork",
        "setNetwork",
        "getId",
        "setId",
        "getReq_id",
        "setReq_id",
        "<init>",
        "(IIJLjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V",
        "RoomLibrary_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private bhv_time:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private bhv_type:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private client_version:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private device_id:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private device_model:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private goods_id:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private ip:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private net_game:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private network:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private os_version:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private repeatNumber:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private req_id:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private scm:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private spm:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private trans_data:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private user_id:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private user_type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const v21, 0x3ffff

    const/16 v22, 0x0

    invoke-direct/range {v0 .. v22}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;-><init>(IIJLjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p5

    const-string v2, "bhv_type"

    invoke-static {p5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v2, p1

    iput v2, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->id:I

    move v2, p2

    iput v2, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->repeatNumber:I

    move-wide v2, p3

    iput-wide v2, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->bhv_time:J

    iput-object v1, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->bhv_type:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->goods_id:Ljava/lang/String;

    move-wide v1, p7

    iput-wide v1, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->user_id:J

    move v1, p9

    iput v1, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->user_type:I

    move-object v1, p10

    iput-object v1, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->scm:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->spm:Ljava/lang/String;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->trans_data:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->req_id:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->ip:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->client_version:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->device_model:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->network:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->os_version:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->device_id:Ljava/lang/String;

    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->net_game:Z

    return-void
.end method

.method public synthetic constructor <init>(IIJLjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 21

    move/from16 v0, p21

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_2

    move-wide v7, v5

    goto :goto_2

    :cond_2
    move-wide/from16 v7, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    const-string v9, ""

    if-eqz v4, :cond_3

    move-object v4, v9

    goto :goto_3

    :cond_3
    move-object/from16 v4, p5

    :goto_3
    and-int/lit8 v10, v0, 0x10

    if-eqz v10, :cond_4

    move-object v10, v9

    goto :goto_4

    :cond_4
    move-object/from16 v10, p6

    :goto_4
    and-int/lit8 v11, v0, 0x20

    if-eqz v11, :cond_5

    goto :goto_5

    :cond_5
    move-wide/from16 v5, p7

    :goto_5
    and-int/lit8 v11, v0, 0x40

    if-eqz v11, :cond_6

    const/4 v11, 0x0

    goto :goto_6

    :cond_6
    move/from16 v11, p9

    :goto_6
    and-int/lit16 v12, v0, 0x80

    if-eqz v12, :cond_7

    move-object v12, v9

    goto :goto_7

    :cond_7
    move-object/from16 v12, p10

    :goto_7
    and-int/lit16 v13, v0, 0x100

    if-eqz v13, :cond_8

    move-object v13, v9

    goto :goto_8

    :cond_8
    move-object/from16 v13, p11

    :goto_8
    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_9

    move-object v14, v9

    goto :goto_9

    :cond_9
    move-object/from16 v14, p12

    :goto_9
    and-int/lit16 v15, v0, 0x400

    if-eqz v15, :cond_a

    move-object v15, v9

    goto :goto_a

    :cond_a
    move-object/from16 v15, p13

    :goto_a
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_b

    move-object v2, v9

    goto :goto_b

    :cond_b
    move-object/from16 v2, p14

    :goto_b
    move-object/from16 p1, v9

    and-int/lit16 v9, v0, 0x1000

    if-eqz v9, :cond_c

    move-object/from16 v9, p1

    goto :goto_c

    :cond_c
    move-object/from16 v9, p15

    :goto_c
    move-object/from16 v16, v9

    and-int/lit16 v9, v0, 0x2000

    if-eqz v9, :cond_d

    move-object/from16 v9, p1

    goto :goto_d

    :cond_d
    move-object/from16 v9, p16

    :goto_d
    move-object/from16 v17, v9

    and-int/lit16 v9, v0, 0x4000

    if-eqz v9, :cond_e

    move-object/from16 v9, p1

    goto :goto_e

    :cond_e
    move-object/from16 v9, p17

    :goto_e
    const v18, 0x8000

    and-int v18, v0, v18

    if-eqz v18, :cond_f

    move-object/from16 v18, p1

    goto :goto_f

    :cond_f
    move-object/from16 v18, p18

    :goto_f
    const/high16 v19, 0x10000

    and-int v19, v0, v19

    if-eqz v19, :cond_10

    move-object/from16 v19, p1

    goto :goto_10

    :cond_10
    move-object/from16 v19, p19

    :goto_10
    const/high16 v20, 0x20000

    and-int v0, v0, v20

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    goto :goto_11

    :cond_11
    move/from16 v0, p20

    :goto_11
    move-object/from16 p1, p0

    move/from16 p2, v1

    move/from16 p3, v3

    move-wide/from16 p4, v7

    move-object/from16 p6, v4

    move-object/from16 p7, v10

    move-wide/from16 p8, v5

    move/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    move-object/from16 p15, v2

    move-object/from16 p16, v16

    move-object/from16 p17, v17

    move-object/from16 p18, v9

    move-object/from16 p19, v18

    move-object/from16 p20, v19

    move/from16 p21, v0

    .line 2
    invoke-direct/range {p1 .. p21}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;-><init>(IIJLjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;IIJLjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p21

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->id:I

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->repeatNumber:I

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->bhv_time:J

    goto :goto_2

    :cond_2
    move-wide/from16 v4, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->bhv_type:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->goods_id:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-wide v8, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->user_id:J

    goto :goto_5

    :cond_5
    move-wide/from16 v8, p7

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget v10, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->user_type:I

    goto :goto_6

    :cond_6
    move/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-object v11, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->scm:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v11, p10

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget-object v12, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->spm:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v12, p11

    :goto_8
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_9

    iget-object v13, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->trans_data:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v13, p12

    :goto_9
    and-int/lit16 v14, v1, 0x400

    if-eqz v14, :cond_a

    iget-object v14, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->req_id:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v14, p13

    :goto_a
    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_b

    iget-object v15, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->ip:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v15, p14

    :goto_b
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->client_version:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p15

    :goto_c
    move-object/from16 p15, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->device_model:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p16

    :goto_d
    move-object/from16 p16, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->network:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p17

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->os_version:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p18

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->device_id:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p19

    :goto_10
    const/high16 v16, 0x20000

    and-int v1, v1, v16

    if-eqz v1, :cond_11

    iget-boolean v1, v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->net_game:Z

    goto :goto_11

    :cond_11
    move/from16 v1, p20

    :goto_11
    move/from16 p1, v2

    move/from16 p2, v3

    move-wide/from16 p3, v4

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-wide/from16 p7, v8

    move/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p19, v15

    move/from16 p20, v1

    invoke-virtual/range {p0 .. p20}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->copy(IIJLjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->id:I

    return v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->trans_data:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->req_id:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->client_version:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->device_model:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->network:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->os_version:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->device_id:Ljava/lang/String;

    return-object v0
.end method

.method public final component18()Z
    .locals 1

    iget-boolean v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->net_game:Z

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->repeatNumber:I

    return v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->bhv_time:J

    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->bhv_type:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->goods_id:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()J
    .locals 2

    iget-wide v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->user_id:J

    return-wide v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->user_type:I

    return v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->scm:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->spm:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(IIJLjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;
    .locals 22
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move/from16 v20, p20

    const-string v0, "bhv_type"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v21, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-direct/range {v0 .. v20}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;-><init>(IIJLjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v21
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;

    iget v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->id:I

    iget v1, p1, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->id:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->repeatNumber:I

    iget v1, p1, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->repeatNumber:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->bhv_time:J

    iget-wide v2, p1, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->bhv_time:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->bhv_type:Ljava/lang/String;

    iget-object v1, p1, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->bhv_type:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->goods_id:Ljava/lang/String;

    iget-object v1, p1, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->goods_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->user_id:J

    iget-wide v2, p1, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->user_id:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->user_type:I

    iget v1, p1, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->user_type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->scm:Ljava/lang/String;

    iget-object v1, p1, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->scm:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->spm:Ljava/lang/String;

    iget-object v1, p1, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->spm:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->trans_data:Ljava/lang/String;

    iget-object v1, p1, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->trans_data:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->req_id:Ljava/lang/String;

    iget-object v1, p1, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->req_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->ip:Ljava/lang/String;

    iget-object v1, p1, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->ip:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->client_version:Ljava/lang/String;

    iget-object v1, p1, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->client_version:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->device_model:Ljava/lang/String;

    iget-object v1, p1, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->device_model:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->network:Ljava/lang/String;

    iget-object v1, p1, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->network:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->os_version:Ljava/lang/String;

    iget-object v1, p1, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->os_version:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->device_id:Ljava/lang/String;

    iget-object v1, p1, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->device_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->net_game:Z

    iget-boolean p1, p1, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->net_game:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getBhv_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->bhv_time:J

    return-wide v0
.end method

.method public final getBhv_type()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->bhv_type:Ljava/lang/String;

    return-object v0
.end method

.method public final getClient_version()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->client_version:Ljava/lang/String;

    return-object v0
.end method

.method public final getDevice_id()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->device_id:Ljava/lang/String;

    return-object v0
.end method

.method public final getDevice_model()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->device_model:Ljava/lang/String;

    return-object v0
.end method

.method public final getGoods_id()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->goods_id:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->id:I

    return v0
.end method

.method public final getIp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public final getNet_game()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->net_game:Z

    return v0
.end method

.method public final getNetwork()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->network:Ljava/lang/String;

    return-object v0
.end method

.method public final getOs_version()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->os_version:Ljava/lang/String;

    return-object v0
.end method

.method public final getRepeatNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->repeatNumber:I

    return v0
.end method

.method public final getReq_id()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->req_id:Ljava/lang/String;

    return-object v0
.end method

.method public final getScm()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->scm:Ljava/lang/String;

    return-object v0
.end method

.method public final getSpm()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->spm:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrans_data()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->trans_data:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser_id()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->user_id:J

    return-wide v0
.end method

.method public final getUser_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->user_type:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->repeatNumber:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->bhv_time:J

    invoke-static {v1, v2}, Lf2/a;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->bhv_type:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->goods_id:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->user_id:J

    invoke-static {v3, v4}, Lf2/a;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->user_type:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->scm:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->spm:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->trans_data:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->req_id:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->ip:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->client_version:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->device_model:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->network:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->os_version:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->device_id:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->net_game:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    :cond_c
    add-int/2addr v0, v1

    return v0
.end method

.method public final setBhv_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->bhv_time:J

    return-void
.end method

.method public final setBhv_type(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->bhv_type:Ljava/lang/String;

    return-void
.end method

.method public final setClient_version(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->client_version:Ljava/lang/String;

    return-void
.end method

.method public final setDevice_id(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->device_id:Ljava/lang/String;

    return-void
.end method

.method public final setDevice_model(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->device_model:Ljava/lang/String;

    return-void
.end method

.method public final setGoods_id(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->goods_id:Ljava/lang/String;

    return-void
.end method

.method public final setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->id:I

    return-void
.end method

.method public final setIp(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->ip:Ljava/lang/String;

    return-void
.end method

.method public final setNet_game(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->net_game:Z

    return-void
.end method

.method public final setNetwork(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->network:Ljava/lang/String;

    return-void
.end method

.method public final setOs_version(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->os_version:Ljava/lang/String;

    return-void
.end method

.method public final setRepeatNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->repeatNumber:I

    return-void
.end method

.method public final setReq_id(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->req_id:Ljava/lang/String;

    return-void
.end method

.method public final setScm(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->scm:Ljava/lang/String;

    return-void
.end method

.method public final setSpm(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->spm:Ljava/lang/String;

    return-void
.end method

.method public final setTrans_data(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->trans_data:Ljava/lang/String;

    return-void
.end method

.method public final setUser_id(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->user_id:J

    return-void
.end method

.method public final setUser_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->user_type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolcanoEventTab(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", repeatNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->repeatNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bhv_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->bhv_time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bhv_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->bhv_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", goods_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->goods_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->user_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", user_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->user_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->scm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", spm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->spm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trans_data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->trans_data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", req_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->req_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", client_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->client_version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", device_model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->device_model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->network:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", os_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->os_version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", device_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->device_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", net_game="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->net_game:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
