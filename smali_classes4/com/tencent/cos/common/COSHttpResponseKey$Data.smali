.class public Lcom/tencent/cos/common/COSHttpResponseKey$Data;
.super Ljava/lang/Object;
.source "COSHttpResponseKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/common/COSHttpResponseKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# static fields
.field public static final ACCESS_URL:Ljava/lang/String; = "access_url"

.field public static final AUTHORITY:Ljava/lang/String; = "authority"

.field public static final BIZ_ATTR:Ljava/lang/String; = "biz_attr"

.field public static final BLACK_REFERS:Ljava/lang/String; = "blackrefers"

.field public static final CNAME:Ljava/lang/String; = "cnames"

.field public static final CONTEXT:Ljava/lang/String; = "context"

.field public static final CORSCONFIGURATION:Ljava/lang/String; = "CORSConfiguration"

.field public static final CTIME:Ljava/lang/String; = "ctime"

.field public static final CUSTOMER_HEADERS:Ljava/lang/String; = "custom_headers"

.field public static final DATALEN:Ljava/lang/String; = "datalen"

.field public static final DIRCOUNT:Ljava/lang/String; = "dircount"

.field public static final FILECOUNT:Ljava/lang/String; = "filecount"

.field public static final FILELEN:Ljava/lang/String; = "filelen"

.field public static final FILESIZE:Ljava/lang/String; = "filesize"

.field public static final HAS_MORE:Ljava/lang/String; = "has_more"

.field public static final INFOS:Ljava/lang/String; = "infos"

.field public static final KEYS:Ljava/lang/String; = "keys"

.field public static final MIGRATE_SOURCE_DOMAIN:Ljava/lang/String; = "migrate_source_domain"

.field public static final MTIME:Ljava/lang/String; = "mtime"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NEEDPRRIVIEW:Ljava/lang/String; = "need_preview"

.field public static final OFFSET:Ljava/lang/String; = "offset"

.field public static final PREVIEW_URL:Ljava/lang/String; = "preview_url"

.field public static final REFERS:Ljava/lang/String; = "refers"

.field public static final RESOURCE_PATH:Ljava/lang/String; = "resource_path"

.field public static final SERIAL_UPLOAD:Ljava/lang/String; = "serial_upload"

.field public static final SESSION:Ljava/lang/String; = "session"

.field public static final SHA:Ljava/lang/String; = "sha"

.field public static final SLICE_SIZE:Ljava/lang/String; = "slice_size"

.field public static final SOURCE_URL:Ljava/lang/String; = "source_url"

.field public static final URL:Ljava/lang/String; = "url"


# instance fields
.field final synthetic this$0:Lcom/tencent/cos/common/COSHttpResponseKey;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/common/COSHttpResponseKey;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/common/COSHttpResponseKey$Data;->this$0:Lcom/tencent/cos/common/COSHttpResponseKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
