.class public Lcom/github/snowdream/android/app/downloader/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "downloadtask"
.end annotation


# static fields
.field public static final GAME_RUN_STATUS_CANT_RUN:I = 0x3

.field public static final GAME_RUN_STATUS_ERROR:I = 0x2

.field public static final GAME_RUN_STATUS_NONE:I = 0x0

.field public static final GAME_RUN_STATUS_SUCCESS:I = 0x1


# instance fields
.field private _from:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private _from_type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field _modInfoBean:Lcom/join/mgps/dto/ModInfoBean;

.field _singleGameModInfoBean:Lcom/join/mgps/dto/SingleGameModInfoBean;

.field private actual_size:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ad_info:Lcom/join/mgps/dto/CommonGameInfoBean;

.field private ad_info_str:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ad_info_switch:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private allow_start_up_ad:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private battle_upload_pic:Ljava/lang/String;

.field private cdn_down_switch:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field private cfg_down_url:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private cfg_ver:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private cfg_ver_name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private cost_type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private crc_link_type_val:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private currentSize:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private describe:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private disableShowSpeedUpPrompt:Z

.field private downLimit:I

.field private downType:Z

.field private down_count:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private down_status:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private down_type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private down_url_remote:Ljava/lang/String;

.field private downloadType:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private download_original_switch:Ljava/lang/String;

.field private download_outside_url:Ljava/lang/String;

.field private download_source_switch_v1:Ljava/lang/String;

.field private download_source_switch_v2:Ljava/lang/String;

.field private download_source_url:Ljava/lang/String;

.field private dtype:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private duration:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private event:I

.field private ext:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ext1:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fight_fun:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fight_screenshot_pic:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fight_type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fileType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private finishTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fromRecomDown:Z

.field private gameZipPath:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private game_info_top_pic:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private game_info_tpl_type:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private game_run_state:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private game_upgrade_state:I

.field private gift_package_switch:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private hasDeleteNotify:Z

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
        generatedId = true
    .end annotation
.end field

.field private install_type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private interrupt:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isFightOpen:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isNotCheckAddShortcut:Z

.field private isOpen:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private is_boot_commented:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private is_fight:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private is_network:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private is_world:I

.field private keyword:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lastCompleteSize:J

.field private lastTime:J

.field private lock_sp:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private max_an_compatible_ver:I

.field private mimeType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private min_an_compatible_ver:I

.field private mobleNetNeedStop:I

.field private mod_info:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private openTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private other_down_switch:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field private packageName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private path:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
    .end annotation
.end field

.field private pay_game_amount:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private plugin_area:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private plugin_area_val:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private plugin_num:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private plugin_screenshot:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private portraitURL:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private progress:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ref_crc_sign_id:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private res_actual_size:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private res_currentSize:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private resource_path:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private resource_url_remote:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private rid:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field private romArchivedNum:I

.field private romArchivedSize:J

.field private romType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private runtimeStatus:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field private score:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private screenshot_pic:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private showName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private showSize:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private showType:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private single_game_mod_info:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private size:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private source_down_path:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private source_down_url:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private source_ver:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private source_ver_name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private sp_tag_info:Lcom/join/mgps/dto/TipNew;

.field private sp_tag_info_s:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private sp_tpl_two_position:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private speed:Ljava/lang/String;

.field private starNumber:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private startDownloadTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private startGame:Z

.field private startTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private status:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private sync_memory:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private task_down_type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private tipBeans:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation
.end field

.field private tips:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private tp_down_url:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DownloadUrlBean;",
            ">;"
        }
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private uncheckSelfSupport:Z

.field private unzip_size:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
    .end annotation
.end field

.field private ver:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ver_name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private vm_device_switch:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private zipCost:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12

    .line 2
    iput v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->event:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->id:I

    const-string v1, ""

    .line 4
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mimeType:Ljava/lang/String;

    .line 5
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->name:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->path:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 7
    iput-wide v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->size:J

    const-string v4, "0"

    .line 8
    iput-object v4, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->showSize:Ljava/lang/String;

    .line 9
    iput-wide v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->startTime:J

    const/16 v5, 0xe

    .line 10
    iput v5, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->status:I

    .line 11
    iput-wide v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->finishTime:J

    .line 12
    iput v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->type:I

    .line 13
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->url:Ljava/lang/String;

    const/4 v5, -0x1

    .line 14
    iput v5, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->showType:I

    .line 15
    sget-object v5, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    .line 16
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fileType:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_num:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ext1:Ljava/lang/String;

    .line 19
    iput-wide v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->startDownloadTime:J

    const-wide/16 v2, 0x1

    .line 20
    iput-wide v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->progress:J

    .line 21
    iput-object v4, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->speed:Ljava/lang/String;

    .line 22
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->runtimeStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    iput v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_from:I

    .line 24
    iput v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_from_type:I

    .line 25
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->score:Ljava/lang/String;

    const/4 v2, 0x1

    .line 26
    iput-boolean v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->downType:Z

    const/16 v3, 0x12c

    .line 27
    iput v3, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->downLimit:I

    .line 28
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mod_info:Ljava/lang/String;

    .line 29
    iput v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->vm_device_switch:I

    .line 30
    iput v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cost_type:I

    .line 31
    iput-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->hasDeleteNotify:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;JJLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIIILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "JII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJIIII",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x12

    .line 33
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->event:I

    const/4 v1, 0x0

    .line 34
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->id:I

    const-string v2, ""

    .line 35
    iput-object v2, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mimeType:Ljava/lang/String;

    .line 36
    iput-object v2, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->name:Ljava/lang/String;

    .line 37
    iput-object v2, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->path:Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 38
    iput-wide v3, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->size:J

    const-string v5, "0"

    .line 39
    iput-object v5, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->showSize:Ljava/lang/String;

    .line 40
    iput-wide v3, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->startTime:J

    const/16 v6, 0xe

    .line 41
    iput v6, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->status:I

    .line 42
    iput-wide v3, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->finishTime:J

    .line 43
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->type:I

    .line 44
    iput-object v2, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->url:Ljava/lang/String;

    const/4 v6, -0x1

    .line 45
    iput v6, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->showType:I

    .line 46
    sget-object v6, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    .line 47
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fileType:Ljava/lang/String;

    .line 48
    iput-object v2, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_num:Ljava/lang/String;

    .line 49
    iput-object v2, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ext1:Ljava/lang/String;

    .line 50
    iput-wide v3, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->startDownloadTime:J

    const-wide/16 v3, 0x1

    .line 51
    iput-wide v3, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->progress:J

    .line 52
    iput-object v5, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->speed:Ljava/lang/String;

    .line 53
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v4, 0x1a

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->runtimeStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_from:I

    .line 55
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_from_type:I

    .line 56
    iput-object v2, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->score:Ljava/lang/String;

    const/4 v3, 0x1

    .line 57
    iput-boolean v3, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->downType:Z

    const/16 v4, 0x12c

    .line 58
    iput v4, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->downLimit:I

    .line 59
    iput-object v2, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mod_info:Ljava/lang/String;

    .line 60
    iput v3, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->vm_device_switch:I

    .line 61
    iput v3, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cost_type:I

    .line 62
    iput-boolean v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->hasDeleteNotify:Z

    move-wide v1, p2

    .line 63
    iput-wide v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->finishTime:J

    move v1, p4

    .line 64
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->id:I

    move-object v1, p5

    .line 65
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mimeType:Ljava/lang/String;

    move-object v1, p6

    .line 66
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->name:Ljava/lang/String;

    move-object v1, p7

    .line 67
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->path:Ljava/lang/String;

    move-wide v1, p8

    .line 68
    iput-wide v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->size:J

    move-object/from16 v1, p10

    .line 69
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->showSize:Ljava/lang/String;

    move-wide/from16 v1, p11

    .line 70
    iput-wide v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->startTime:J

    move/from16 v1, p13

    .line 71
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->status:I

    move/from16 v1, p14

    .line 72
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->type:I

    move-object/from16 v1, p15

    .line 73
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->url:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 74
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->gameZipPath:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 75
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->showName:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 76
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->dtype:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 77
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->packageName:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 78
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->tips:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 79
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->portraitURL:Ljava/lang/String;

    move-object/from16 v1, p22

    .line 80
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->crc_link_type_val:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 81
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ver:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 82
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ver_name:Ljava/lang/String;

    move-object/from16 v1, p25

    .line 83
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->starNumber:Ljava/lang/String;

    move-object/from16 v1, p26

    .line 84
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->romType:Ljava/lang/String;

    move/from16 v1, p27

    .line 85
    iput-boolean v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isOpen:Z

    move/from16 v1, p28

    .line 86
    iput-boolean v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isFightOpen:Z

    move-object/from16 v1, p29

    .line 87
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->describe:Ljava/lang/String;

    move/from16 v1, p30

    .line 88
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->showType:I

    move-object/from16 v1, p31

    .line 89
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fileType:Ljava/lang/String;

    move-object/from16 v1, p32

    .line 90
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cfg_ver_name:Ljava/lang/String;

    move-object/from16 v1, p33

    .line 91
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cfg_ver:Ljava/lang/String;

    move-object/from16 v1, p34

    .line 92
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cfg_down_url:Ljava/lang/String;

    move/from16 v1, p35

    .line 93
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->downloadType:I

    move-object/from16 v1, p36

    .line 94
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->screenshot_pic:Ljava/lang/String;

    move-object/from16 v1, p37

    .line 95
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fight_screenshot_pic:Ljava/lang/String;

    move-wide/from16 v1, p38

    .line 96
    iput-wide v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->openTime:J

    move-object/from16 v1, p40

    .line 97
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->tipBeans:Ljava/util/ArrayList;

    move-wide/from16 v1, p41

    .line 98
    iput-wide v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->lastCompleteSize:J

    move-wide/from16 v1, p43

    .line 99
    iput-wide v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->lastTime:J

    move-object/from16 v1, p45

    .line 100
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->keyword:Ljava/lang/String;

    move-object/from16 v1, p46

    .line 101
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_num:Ljava/lang/String;

    move/from16 v1, p48

    .line 102
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->is_network:I

    move-object/from16 v1, p49

    .line 103
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->source_ver_name:Ljava/lang/String;

    move-object/from16 v1, p50

    .line 104
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->source_ver:Ljava/lang/String;

    move-object/from16 v1, p51

    .line 105
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->source_down_url:Ljava/lang/String;

    move-object/from16 v1, p52

    .line 106
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->source_down_path:Ljava/lang/String;

    move/from16 v1, p53

    .line 107
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_screenshot:I

    move/from16 v1, p54

    .line 108
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_area:I

    move-wide/from16 v1, p55

    .line 109
    iput-wide v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_area_val:J

    move/from16 v1, p59

    .line 110
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->is_fight:I

    move/from16 v1, p60

    .line 111
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fight_type:I

    move-object/from16 v1, p61

    .line 112
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fight_fun:Ljava/lang/String;

    move/from16 v1, p62

    .line 113
    iput-boolean v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->startGame:Z

    move-object/from16 v1, p63

    .line 114
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->rid:Ljava/lang/String;

    .line 115
    iget-wide v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->duration:J

    iput-wide v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->duration:J

    move-object/from16 v1, p65

    .line 116
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->game_info_tpl_type:Ljava/lang/String;

    move-object/from16 v1, p66

    .line 117
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sync_memory:Ljava/lang/String;

    move/from16 v1, p67

    .line 118
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->gift_package_switch:I

    move-object/from16 v1, p68

    .line 119
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ad_info_str:Ljava/lang/String;

    return-void
.end method

.method private getSp_tag_info_s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tag_info_s:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    iget v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->id:I

    iget v3, p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;->id:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->crc_link_type_val:Ljava/lang/String;

    iget-object p1, p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;->crc_link_type_val:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getActual_size()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->actual_size:J

    return-wide v0
.end method

.method public getAd_info()Lcom/join/mgps/dto/CommonGameInfoBean;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ad_info_str:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ad_info_str:Ljava/lang/String;

    const-class v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CommonGameInfoBean;

    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ad_info:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ad_info:Lcom/join/mgps/dto/CommonGameInfoBean;

    return-object v0
.end method

.method public getAd_info_str()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ad_info_str:Ljava/lang/String;

    return-object v0
.end method

.method public getAd_info_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ad_info_switch:I

    return v0
.end method

.method public getAllow_start_up_ad()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->allow_start_up_ad:Ljava/lang/String;

    return-object v0
.end method

.method public getBattle_upload_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->battle_upload_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getCdn_down_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cdn_down_switch:I

    return v0
.end method

.method public getCfg_down_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cfg_down_url:Ljava/lang/String;

    return-object v0
.end method

.method public getCfg_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cfg_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getCfg_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cfg_ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCost_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cost_type:I

    return v0
.end method

.method public getCrc_link_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->crc_link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSize()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->currentSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0
.end method

.method public getDescribe()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->describe:Ljava/lang/String;

    return-object v0
.end method

.method public getDownLimit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->downLimit:I

    return v0
.end method

.method public getDown_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->down_count:I

    return v0
.end method

.method public getDown_status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->down_status:I

    return v0
.end method

.method public getDown_type()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_num:Ljava/lang/String;

    iget v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->down_type:I

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/h;->l(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDown_url_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->down_url_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->downloadType:I

    return v0
.end method

.method public getDownload_original_switch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->download_original_switch:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_outside_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->download_outside_url:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_source_switch_v1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->download_source_switch_v1:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_source_switch_v2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->download_source_switch_v2:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_source_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->download_source_url:Ljava/lang/String;

    return-object v0
.end method

.method public getDtype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->dtype:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->duration:J

    return-wide v0
.end method

.method public getEvent()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->event:I

    return v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getExt1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ext1:Ljava/lang/String;

    return-object v0
.end method

.method public getFight_fun()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fight_fun:Ljava/lang/String;

    return-object v0
.end method

.method public getFight_screenshot_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fight_screenshot_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getFight_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fight_type:I

    return v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fileType:Ljava/lang/String;

    return-object v0
.end method

.method public getFinishTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->finishTime:J

    return-wide v0
.end method

.method public getGameZipPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->gameZipPath:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_info_top_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->game_info_top_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_info_tpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->game_info_tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_run_state()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->game_run_state:I

    return v0
.end method

.method public getGame_upgrade_state()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->game_upgrade_state:I

    return v0
.end method

.method public getGift_package_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->gift_package_switch:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->id:I

    return v0
.end method

.method public getInstall_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->install_type:I

    return v0
.end method

.method public getInterrupt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->interrupt:I

    return v0
.end method

.method public getIs_boot_commented()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->is_boot_commented:I

    return v0
.end method

.method public getIs_fight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->is_fight:I

    return v0
.end method

.method public getIs_network()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->is_network:I

    return v0
.end method

.method public getIs_world()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->is_world:I

    return v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getLastCompleteSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->lastCompleteSize:J

    return-wide v0
.end method

.method public getLastTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->lastTime:J

    return-wide v0
.end method

.method public getLock_sp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->lock_sp:I

    return v0
.end method

.method public getMax_an_compatible_ver()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->max_an_compatible_ver:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getMin_an_compatible_ver()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->min_an_compatible_ver:I

    return v0
.end method

.method public getMobleNetNeedStop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mobleNetNeedStop:I

    return v0
.end method

.method public getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean(Z)Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    return-object v0
.end method

.method public getModInfoBean(Z)Lcom/join/mgps/dto/ModInfoBean;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMod()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p1

    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mod_info:Ljava/lang/String;

    const-class v1, Lcom/join/mgps/dto/ModInfoBean;

    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ModInfoBean;

    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_modInfoBean:Lcom/join/mgps/dto/ModInfoBean;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_modInfoBean:Lcom/join/mgps/dto/ModInfoBean;

    if-nez p1, :cond_1

    .line 5
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p1

    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mod_info:Ljava/lang/String;

    const-class v1, Lcom/join/mgps/dto/ModInfoBean;

    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ModInfoBean;

    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_modInfoBean:Lcom/join/mgps/dto/ModInfoBean;

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_modInfoBean:Lcom/join/mgps/dto/ModInfoBean;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMod_info()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mod_info:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->openTime:J

    return-wide v0
.end method

.method public getOther_down_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->other_down_switch:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPay_game_amount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->pay_game_amount:I

    return v0
.end method

.method public getPlugin_area()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_area:I

    return v0
.end method

.method public getPlugin_area_val()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_area_val:J

    return-wide v0
.end method

.method public getPlugin_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_num:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugin_screenshot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_screenshot:I

    return v0
.end method

.method public getPortraitURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->portraitURL:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->progress:J

    return-wide v0
.end method

.method public getRef_crc_sign_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ref_crc_sign_id:Ljava/lang/String;

    return-object v0
.end method

.method public getRes_actual_size()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->res_actual_size:J

    return-wide v0
.end method

.method public getRes_currentSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->res_currentSize:J

    return-wide v0
.end method

.method public getResource_path()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->resource_path:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->resource_path:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getResource_url_remote()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->resource_url_remote:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->resource_url_remote:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getRid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->rid:Ljava/lang/String;

    return-object v0
.end method

.method public getRomArchivedNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->romArchivedNum:I

    return v0
.end method

.method public getRomArchivedSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->romArchivedSize:J

    return-wide v0
.end method

.method public getRomType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->romType:Ljava/lang/String;

    return-object v0
.end method

.method public getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->runtimeStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->score:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenshot_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->screenshot_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getShowName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->showName:Ljava/lang/String;

    return-object v0
.end method

.method public getShowSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->showSize:Ljava/lang/String;

    return-object v0
.end method

.method public getShowType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->showType:I

    return v0
.end method

.method public getSingleGameModInfoBean()Lcom/join/mgps/dto/SingleGameModInfoBean;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSingleGameModInfoBean(Z)Lcom/join/mgps/dto/SingleGameModInfoBean;

    move-result-object v0

    return-object v0
.end method

.method public getSingleGameModInfoBean(Z)Lcom/join/mgps/dto/SingleGameModInfoBean;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->single_game_mod_info:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p1

    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->single_game_mod_info:Ljava/lang/String;

    const-class v1, Lcom/join/mgps/dto/SingleGameModInfoBean;

    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/SingleGameModInfoBean;

    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_singleGameModInfoBean:Lcom/join/mgps/dto/SingleGameModInfoBean;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_singleGameModInfoBean:Lcom/join/mgps/dto/SingleGameModInfoBean;

    if-nez p1, :cond_1

    .line 5
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p1

    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->single_game_mod_info:Ljava/lang/String;

    const-class v1, Lcom/join/mgps/dto/SingleGameModInfoBean;

    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/SingleGameModInfoBean;

    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_singleGameModInfoBean:Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_singleGameModInfoBean:Lcom/join/mgps/dto/SingleGameModInfoBean;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSingle_game_mod_info()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->single_game_mod_info:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->size:J

    return-wide v0
.end method

.method public getSource_down_path()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->source_down_path:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_down_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->source_down_url:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->source_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->source_ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSp_tag_info()Lcom/join/mgps/dto/TipNew;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tag_info_s:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    iget-object v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tag_info_s:Ljava/lang/String;

    const-class v3, Lcom/join/mgps/dto/TipNew;

    invoke-virtual {v0, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/TipNew;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object v1
.end method

.method public getSp_tpl_two_position()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tpl_two_position:I

    return v0
.end method

.method public getSpeed()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->speed:Ljava/lang/String;

    return-object v0
.end method

.method public getStarNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->starNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDownloadTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->startDownloadTime:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->startTime:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->status:I

    return v0
.end method

.method public getSync_memory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sync_memory:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getTask_down_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->task_down_type:I

    return v0
.end method

.method public getTipBeans()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->tips:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->tips:Ljava/lang/String;

    const-string v1, "\"\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->tips:Ljava/lang/String;

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v2

    const-class v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/join/mgps/dto/TipBean;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->tipBeans:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tips="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->tips:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->tipBeans:Ljava/util/ArrayList;

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->tipBeans:Ljava/util/ArrayList;

    return-object v0

    .line 7
    :cond_1
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getTips()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->tips:Ljava/lang/String;

    return-object v0
.end method

.method public getTp_down_url()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DownloadUrlBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->tp_down_url:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->type:I

    return v0
.end method

.method public getUnzip_size()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->unzip_size:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->unzip_size:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->unzip_size:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->unzip_size:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public getVerCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ver:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ver:Ljava/lang/String;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3
    array-length v2, v0

    if-lez v2, :cond_0

    .line 4
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public getVer_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getVm_device_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->vm_device_switch:I

    return v0
.end method

.method public getZipCost()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->zipCost:J

    return-wide v0
.end method

.method public get_from()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_from:I

    return v0
.end method

.method public get_from_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_from_type:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->crc_link_type_val:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisableShowSpeedUpPrompt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->disableShowSpeedUpPrompt:Z

    return v0
.end method

.method public isDownType()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->downType:Z

    return v0
.end method

.method public isFightFun()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_fun()Ljava/lang/String;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_4

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    const/16 v5, 0x30

    const/16 v6, 0x31

    if-lt v3, v4, :cond_1

    const/4 v3, 0x6

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x5

    .line 6
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v6, :cond_0

    const/16 v0, 0x31

    goto :goto_0

    :cond_0
    const/16 v0, 0x30

    goto :goto_0

    :cond_1
    const/16 v0, 0x30

    const/16 v3, 0x30

    :goto_0
    if-eq v6, v2, :cond_3

    if-ne v6, v3, :cond_2

    goto :goto_1

    :cond_2
    if-ne v5, v2, :cond_4

    if-ne v5, v3, :cond_4

    if-ne v0, v6, :cond_4

    :cond_3
    :goto_1
    return v1

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public isFightOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isFightOpen:Z

    return v0
.end method

.method public isFromRecomDown()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fromRecomDown:Z

    return v0
.end method

.method public isHasDeleteNotify()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->hasDeleteNotify:Z

    return v0
.end method

.method public isIs_fight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->is_fight:I

    return v0
.end method

.method public isIs_network()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->is_network:I

    return v0
.end method

.method public isMiniGame()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/TipNew;->getMini_game()Lcom/join/mgps/dto/TipBean;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMod()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNotCheckAddShortcut()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isNotCheckAddShortcut:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isOpen:Z

    return v0
.end method

.method public isPlugin_area()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_area:I

    return v0
.end method

.method public isPlugin_screenshot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_screenshot:I

    return v0
.end method

.method public isSingleGame()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/TipNew;->getSingle_game_vm()Lcom/join/mgps/dto/TipBean;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSo()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isStartGame()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->startGame:Z

    return v0
.end method

.method public isUncheckSelfSupport()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->uncheckSelfSupport:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setActual_size(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->actual_size:J

    return-void
.end method

.method public setAd_info(Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ad_info:Lcom/join/mgps/dto/CommonGameInfoBean;

    return-void
.end method

.method public setAd_info_str(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ad_info_str:Ljava/lang/String;

    return-void
.end method

.method public setAd_info_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ad_info_switch:I

    return-void
.end method

.method public setAllow_start_up_ad(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->allow_start_up_ad:Ljava/lang/String;

    return-void
.end method

.method public setBattle_upload_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->battle_upload_pic:Ljava/lang/String;

    return-void
.end method

.method public setCdn_down_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cdn_down_switch:I

    return-void
.end method

.method public setCfg_down_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cfg_down_url:Ljava/lang/String;

    return-void
.end method

.method public setCfg_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cfg_ver:Ljava/lang/String;

    return-void
.end method

.method public setCfg_ver_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cfg_ver_name:Ljava/lang/String;

    return-void
.end method

.method public setCost_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cost_type:I

    return-void
.end method

.method public setCrc_link_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->crc_link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setCurrentSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->currentSize:J

    return-void
.end method

.method public setDescribe(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->describe:Ljava/lang/String;

    return-void
.end method

.method public setDisableShowSpeedUpPrompt(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->disableShowSpeedUpPrompt:Z

    return-void
.end method

.method public setDownLimit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->downLimit:I

    return-void
.end method

.method public setDownType(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->downType:Z

    return-void
.end method

.method public setDown_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->down_count:I

    return-void
.end method

.method public setDown_status(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->down_status:I

    return-void
.end method

.method public setDown_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->down_type:I

    return-void
.end method

.method public setDown_url_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->down_url_remote:Ljava/lang/String;

    return-void
.end method

.method public setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-wide v0, p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;->startTime:J

    iput-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->startTime:J

    .line 2
    iget v0, p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;->id:I

    iput v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->id:I

    .line 3
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mimeType:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->name:Ljava/lang/String;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->path:Ljava/lang/String;

    .line 9
    :cond_2
    iget-wide v0, p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;->size:J

    iput-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->size:J

    .line 10
    iget v0, p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;->status:I

    iput v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->status:I

    .line 11
    iget v0, p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;->type:I

    iput v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->type:I

    .line 12
    iget-object p1, p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;->url:Ljava/lang/String;

    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->url:Ljava/lang/String;

    return-void
.end method

.method public setDownloadType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->downloadType:I

    return-void
.end method

.method public setDownload_original_switch(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->download_original_switch:Ljava/lang/String;

    return-void
.end method

.method public setDownload_outside_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->download_outside_url:Ljava/lang/String;

    return-void
.end method

.method public setDownload_source_switch_v1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->download_source_switch_v1:Ljava/lang/String;

    return-void
.end method

.method public setDownload_source_switch_v2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->download_source_switch_v2:Ljava/lang/String;

    return-void
.end method

.method public setDownload_source_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->download_source_url:Ljava/lang/String;

    return-void
.end method

.method public setDtype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->dtype:Ljava/lang/String;

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->duration:J

    return-void
.end method

.method public setEvent(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->event:I

    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ext:Ljava/lang/String;

    return-void
.end method

.method public setExt1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ext1:Ljava/lang/String;

    return-void
.end method

.method public setFightOpen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isFightOpen:Z

    return-void
.end method

.method public setFight_fun(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fight_fun:Ljava/lang/String;

    return-void
.end method

.method public setFight_screenshot_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fight_screenshot_pic:Ljava/lang/String;

    return-void
.end method

.method public setFight_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fight_type:I

    return-void
.end method

.method public setFileType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fileType:Ljava/lang/String;

    return-void
.end method

.method public setFinishTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->finishTime:J

    return-void
.end method

.method public setFromRecomDown(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fromRecomDown:Z

    return-void
.end method

.method public setGameZipPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->gameZipPath:Ljava/lang/String;

    return-void
.end method

.method public setGame_info_top_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->game_info_top_pic:Ljava/lang/String;

    return-void
.end method

.method public setGame_info_tpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->game_info_tpl_type:Ljava/lang/String;

    return-void
.end method

.method public setGame_run_state(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->game_run_state:I

    return-void
.end method

.method public setGame_upgrade_state(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->game_upgrade_state:I

    return-void
.end method

.method public setGift_package_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->gift_package_switch:I

    return-void
.end method

.method public setHasDeleteNotify(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->hasDeleteNotify:Z

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->id:I

    return-void
.end method

.method public setInstall_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->install_type:I

    return-void
.end method

.method public setInterrupt(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->interrupt:I

    return-void
.end method

.method public setIsFightOpen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isFightOpen:Z

    return-void
.end method

.method public setIsOpen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isOpen:Z

    return-void
.end method

.method public setIs_boot_commented(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->is_boot_commented:I

    return-void
.end method

.method public setIs_fight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->is_fight:I

    return-void
.end method

.method public setIs_network(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->is_network:I

    return-void
.end method

.method public setIs_world(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->is_world:I

    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->keyword:Ljava/lang/String;

    return-void
.end method

.method public setLastCompleteSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->lastCompleteSize:J

    return-void
.end method

.method public setLastTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->lastTime:J

    return-void
.end method

.method public setLock_sp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->lock_sp:I

    return-void
.end method

.method public setMax_an_compatible_ver(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->max_an_compatible_ver:I

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public setMin_an_compatible_ver(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->min_an_compatible_ver:I

    return-void
.end method

.method public setMobleNetNeedStop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mobleNetNeedStop:I

    return-void
.end method

.method public setMod_info(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mod_info:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->name:Ljava/lang/String;

    return-void
.end method

.method public setNotCheckAddShortcut(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isNotCheckAddShortcut:Z

    return-void
.end method

.method public setOpen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isOpen:Z

    return-void
.end method

.method public setOpenTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->openTime:J

    return-void
.end method

.method public setOther_down_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->other_down_switch:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->path:Ljava/lang/String;

    return-void
.end method

.method public setPay_game_amount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->pay_game_amount:I

    return-void
.end method

.method public setPlugin_area(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_area:I

    return-void
.end method

.method public setPlugin_area_val(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_area_val:J

    return-void
.end method

.method public setPlugin_num(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_num:Ljava/lang/String;

    return-void
.end method

.method public setPlugin_screenshot(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_screenshot:I

    return-void
.end method

.method public setPortraitURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->portraitURL:Ljava/lang/String;

    return-void
.end method

.method public setProgress(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->progress:J

    return-void
.end method

.method public setRef_crc_sign_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ref_crc_sign_id:Ljava/lang/String;

    return-void
.end method

.method public setRes_actual_size(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->res_actual_size:J

    return-void
.end method

.method public setRes_currentSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->res_currentSize:J

    return-void
.end method

.method public setResource_path(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->resource_path:Ljava/lang/String;

    return-void
.end method

.method public setResource_url_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->resource_url_remote:Ljava/lang/String;

    return-void
.end method

.method public setRid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->rid:Ljava/lang/String;

    return-void
.end method

.method public setRomArchivedNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->romArchivedNum:I

    return-void
.end method

.method public setRomArchivedSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->romArchivedSize:J

    return-void
.end method

.method public setRomType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->romType:Ljava/lang/String;

    return-void
.end method

.method public setRuntimeStatus(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->runtimeStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->score:Ljava/lang/String;

    return-void
.end method

.method public setScreenshot_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->screenshot_pic:Ljava/lang/String;

    return-void
.end method

.method public setShowName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->showName:Ljava/lang/String;

    return-void
.end method

.method public setShowSize(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->showSize:Ljava/lang/String;

    return-void
.end method

.method public setShowType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->showType:I

    return-void
.end method

.method public setSingle_game_mod_info(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->single_game_mod_info:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->size:J

    return-void
.end method

.method public setSource_down_path(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->source_down_path:Ljava/lang/String;

    return-void
.end method

.method public setSource_down_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->source_down_url:Ljava/lang/String;

    return-void
.end method

.method public setSource_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->source_ver:Ljava/lang/String;

    return-void
.end method

.method public setSource_ver_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->source_ver_name:Ljava/lang/String;

    return-void
.end method

.method public setSp_tag_info(Lcom/join/mgps/dto/TipNew;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tag_info_s:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    :cond_0
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    return-void
.end method

.method public setSp_tag_info_s(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tag_info_s:Ljava/lang/String;

    return-void
.end method

.method public setSp_tpl_two_position(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tpl_two_position:I

    return-void
.end method

.method public setSpeed(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->speed:Ljava/lang/String;

    return-void
.end method

.method public setStarNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->starNumber:Ljava/lang/String;

    return-void
.end method

.method public setStartDownloadTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->startDownloadTime:J

    return-void
.end method

.method public setStartGame(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->startGame:Z

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->startTime:J

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->status:I

    return-void
.end method

.method public setSync_memory(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sync_memory:Ljava/lang/String;

    return-void
.end method

.method public setTask_down_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->task_down_type:I

    return-void
.end method

.method public setTipBeans(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTips(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->tipBeans:Ljava/util/ArrayList;

    return-void
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->tips:Ljava/lang/String;

    return-void
.end method

.method public setTp_down_url(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DownloadUrlBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->tp_down_url:Ljava/util/List;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->type:I

    return-void
.end method

.method public setUncheckSelfSupport(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->uncheckSelfSupport:Z

    return-void
.end method

.method public setUnzip_size(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->unzip_size:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->url:Ljava/lang/String;

    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ver:Ljava/lang/String;

    return-void
.end method

.method public setVer_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ver_name:Ljava/lang/String;

    return-void
.end method

.method public setVm_device_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->vm_device_switch:I

    return-void
.end method

.method public setWorld_area(I)V
    .locals 0

    return-void
.end method

.method public setWorld_shop(I)V
    .locals 0

    return-void
.end method

.method public setZipCost(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->zipCost:J

    return-void
.end method

.method public set_from(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_from:I

    return-void
.end method

.method public set_from_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_from_type:I

    return-void
.end method
