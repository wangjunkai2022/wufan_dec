.class public Lcom/xinzhu/overmind/client/hook/fixer/ActivityFixer;
.super Ljava/lang/Object;
.source "ActivityFixer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fix(Landroid/app/Activity;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xinzhu/haunted/android/app/a;

    invoke-direct {v0, p0}, Lcom/xinzhu/haunted/android/app/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/app/a;->h()Landroid/content/pm/ActivityInfo;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$e;->R()[I

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$e;->Y()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 5
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 6
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 7
    :cond_0
    :goto_0
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$e;->V()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 9
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 10
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    :cond_2
    :goto_1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v2, :cond_4

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 16
    :try_start_3
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "[B%d]%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 18
    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_3

    .line 19
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 20
    :cond_3
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0, v1, v2}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method
