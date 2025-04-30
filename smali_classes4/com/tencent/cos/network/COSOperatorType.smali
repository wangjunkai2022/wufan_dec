.class public Lcom/tencent/cos/network/COSOperatorType;
.super Ljava/lang/Object;
.source "COSOperatorType.java"


# static fields
.field public static final COPYFILE:B = 0xct

.field public static final CREATEDIR:B = 0x9t

.field public static final DELETE_OBJECT:B = 0x4t

.field public static final GETOBJECTMETADATA:B = 0x5t

.field public static final GET_BUCKET_ACL:B = 0xet

.field public static final GET_OBJECT:B = 0x3t

.field public static final HEADBUCKET:B = 0xdt

.field public static final LISTDIR:B = 0x8t

.field public static final LISTOBJECT:B = 0x7t

.field public static final PUT_OBJECT:B = 0x1t

.field public static final REMOVEEMPTYDIR:B = 0x6t

.field public static final UNKONW_OPERATE:B = -0x1t

.field public static final UPDATE_OBJECT:B = 0x2t

.field public static final UPLOAD_SLICE:B = 0xat

.field public static final UPLOAD_SLICE4:B = 0xbt


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
