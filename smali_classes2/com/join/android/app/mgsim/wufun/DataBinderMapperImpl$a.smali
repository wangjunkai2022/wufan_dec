.class Lcom/join/android/app/mgsim/wufun/DataBinderMapperImpl$a;
.super Ljava/lang/Object;
.source "DataBinderMapperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/mgsim/wufun/DataBinderMapperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/join/android/app/mgsim/wufun/DataBinderMapperImpl$a;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "_all"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    const-string v2, "adapter"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x2

    const-string v2, "afterTextChange"

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x3

    const-string v2, "album"

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x4

    const-string v2, "archive"

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x5

    const-string v2, "beforTextChange"

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x6

    const-string v2, "bindingData"

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x7

    const-string v2, "click"

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x8

    const-string v2, "clickListener"

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x9

    const-string v2, "data"

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xa

    const-string v2, "emusClickListener"

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xb

    const-string v2, "fragmentManager"

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xc

    const-string v2, "fragments"

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xd

    const-string v2, "isChoice"

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xe

    const-string v2, "isShowName"

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xf

    const-string v2, "isdiscount"

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x10

    const-string v2, "isshowWhite"

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x11

    const-string v2, "itemData"

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x12

    const-string v2, "listBean"

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x13

    const-string v2, "loadBindProxy"

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x14

    const-string v2, "message"

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x15

    const-string v2, "onClickListener"

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x16

    const-string v2, "recyclerviewDatas"

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x17

    const-string v2, "recycleviewListener"

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x18

    const-string v2, "titles"

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x19

    const-string v2, "videoData"

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x1a

    const-string v2, "videoHelper"

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x1b

    const-string v2, "viewModle"

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x1c

    const-string v2, "viewPager"

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x1d

    const-string/jumbo v2, "vm"

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
