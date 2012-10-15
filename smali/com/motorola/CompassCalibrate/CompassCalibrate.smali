.class public Lcom/motorola/CompassCalibrate/CompassCalibrate;
.super Lcom/motorola/CompassCalibrate/GraphicsActivity;
.source "CompassCalibrate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;
    }
.end annotation


# static fields
.field private static final CALIBRATE_EXAMPLE_LAUNCHED:Ljava/lang/String; = "calibrate_example_launched"

.field private static final DEBUG:Z = true

.field private static final DIALOG_COMPLETED_ID:I = 0x1

.field private static final KEY_IN_SETTINGDB:Ljava/lang/String; = "compass_calibrated"

.field private static final TAG:Ljava/lang/String; = "CompassCalibrate"


# instance fields
.field private CALIBRATE_EXAMPLE_REQUEST:I

.field private accel_was_enabled:Z

.field private comp_dialog_shown:Z

.field private completed:Z

.field private go:Z

.field private instructions_shown:Z

.field private isInstructionShown:Z

.field private mAccuracy:I

.field private mCalibrateExampleLaunched:Z

.field private mHardKeyboardAttached:Z

.field private mHardKeyboardHidden:Z

.field private final mListener:Landroid/hardware/SensorEventListener;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mValues:[F

.field private mView:Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;

.field private path:Ljava/lang/String;

.field private pm:Landroid/os/PowerManager;

.field private slideClosed:Z

.field private slideOpened:Z

.field private t:Ljava/util/Timer;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/motorola/CompassCalibrate/GraphicsActivity;-><init>()V

    .line 63
    iput-boolean v1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->completed:Z

    .line 64
    iput-boolean v1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->instructions_shown:Z

    .line 65
    iput-boolean v1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->comp_dialog_shown:Z

    .line 71
    iput-boolean v1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->slideOpened:Z

    .line 72
    iput-boolean v1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->slideClosed:Z

    .line 73
    iput-boolean v1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->go:Z

    .line 74
    const-string v0, "compass.temp"

    iput-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->path:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mCalibrateExampleLaunched:Z

    .line 80
    iput-boolean v1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->accel_was_enabled:Z

    .line 83
    iput-boolean v1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->isInstructionShown:Z

    .line 84
    const/16 v0, 0x14

    iput v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->CALIBRATE_EXAMPLE_REQUEST:I

    .line 88
    new-instance v0, Lcom/motorola/CompassCalibrate/CompassCalibrate$1;

    invoke-direct {v0, p0}, Lcom/motorola/CompassCalibrate/CompassCalibrate$1;-><init>(Lcom/motorola/CompassCalibrate/CompassCalibrate;)V

    iput-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mListener:Landroid/hardware/SensorEventListener;

    .line 376
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/CompassCalibrate/CompassCalibrate;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mValues:[F

    return-object v0
.end method

.method static synthetic access$002(Lcom/motorola/CompassCalibrate/CompassCalibrate;[F)[F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mValues:[F

    return-object p1
.end method

.method static synthetic access$100(Lcom/motorola/CompassCalibrate/CompassCalibrate;)Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mView:Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/CompassCalibrate/CompassCalibrate;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mAccuracy:I

    return v0
.end method

.method static synthetic access$202(Lcom/motorola/CompassCalibrate/CompassCalibrate;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mAccuracy:I

    return p1
.end method

.method static synthetic access$300(Lcom/motorola/CompassCalibrate/CompassCalibrate;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->go:Z

    return v0
.end method

.method static synthetic access$302(Lcom/motorola/CompassCalibrate/CompassCalibrate;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->go:Z

    return p1
.end method

.method static synthetic access$400(Lcom/motorola/CompassCalibrate/CompassCalibrate;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->completed:Z

    return v0
.end method

.method static synthetic access$500(Lcom/motorola/CompassCalibrate/CompassCalibrate;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->instructions_shown:Z

    return v0
.end method

.method static synthetic access$600(Lcom/motorola/CompassCalibrate/CompassCalibrate;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->comp_dialog_shown:Z

    return v0
.end method

.method static synthetic access$602(Lcom/motorola/CompassCalibrate/CompassCalibrate;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->comp_dialog_shown:Z

    return p1
.end method

.method static synthetic access$700(Lcom/motorola/CompassCalibrate/CompassCalibrate;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->path:Ljava/lang/String;

    return-object v0
.end method

.method private showErrorAndFinish()V
    .locals 2

    .prologue
    .line 363
    const v0, 0x7f05000b

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 364
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 365
    invoke-virtual {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->finish()V

    .line 366
    return-void
.end method


# virtual methods
.method protected CompletedDialog()V
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->showDialog(I)V

    .line 323
    return-void
.end method

.method protected checkAccelerometer()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 300
    invoke-virtual {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->accel_was_enabled:Z

    .line 302
    iget-boolean v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->accel_was_enabled:Z

    return v0

    :cond_0
    move v0, v2

    .line 300
    goto :goto_0
.end method

.method protected checkFaces()V
    .locals 13

    .prologue
    const-string v12, "CompassCalibrate"

    const-string v9, "\nslideOpened"

    const-string v9, "\nslideClosed"

    .line 241
    iget-object v9, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mView:Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;

    invoke-virtual {v9}, Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 242
    .local v5, mContext:Landroid/content/Context;
    const/4 v2, 0x0

    .line 243
    .local v2, found:Z
    invoke-virtual {v5}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .line 244
    .local v7, s:Ljava/lang/String;
    iget-object v9, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->path:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 245
    const/4 v2, 0x1

    .line 243
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 248
    .end local v7           #s:Ljava/lang/String;
    :cond_1
    if-nez v2, :cond_4

    .line 250
    :try_start_0
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    iget-object v10, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->path:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 251
    .local v8, writer:Ljava/io/BufferedWriter;
    iget-boolean v9, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->slideOpened:Z

    if-eqz v9, :cond_2

    .line 252
    const-string v9, "\nslideOpened"

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 254
    :cond_2
    iget-boolean v9, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->slideClosed:Z

    if-eqz v9, :cond_3

    .line 255
    const-string v9, "\nslideClosed"

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 257
    :cond_3
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 292
    .end local v8           #writer:Ljava/io/BufferedWriter;
    :goto_1
    return-void

    .line 258
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 259
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v9, "CompassCalibrate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t find a file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->showErrorAndFinish()V

    goto :goto_1

    .line 261
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v9

    move-object v1, v9

    .line 262
    .local v1, e:Ljava/io/IOException;
    const-string v9, "CompassCalibrate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t open a file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-direct {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->showErrorAndFinish()V

    goto :goto_1

    .line 267
    .end local v1           #e:Ljava/io/IOException;
    :cond_4
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    iget-object v10, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->path:Ljava/lang/String;

    invoke-virtual {v5, v10}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 268
    .local v6, reader:Ljava/io/BufferedReader;
    const-string v7, ""

    .line 269
    .restart local v7       #s:Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 270
    const-string v9, "slideOpened"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 271
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->slideOpened:Z

    .line 273
    :cond_6
    const-string v9, "slideClosed"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 274
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->slideClosed:Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    .line 286
    .end local v6           #reader:Ljava/io/BufferedReader;
    .end local v7           #s:Ljava/lang/String;
    :catch_2
    move-exception v9

    move-object v1, v9

    .line 287
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-direct {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->showErrorAndFinish()V

    goto :goto_1

    .line 277
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    .restart local v7       #s:Ljava/lang/String;
    :cond_7
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 278
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    iget-object v10, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->path:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 279
    .restart local v8       #writer:Ljava/io/BufferedWriter;
    iget-boolean v9, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->slideOpened:Z

    if-eqz v9, :cond_8

    .line 280
    const-string v9, "\nslideOpened"

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 282
    :cond_8
    iget-boolean v9, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->slideClosed:Z

    if-eqz v9, :cond_9

    .line 283
    const-string v9, "\nslideClosed"

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 285
    :cond_9
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    .line 288
    .end local v6           #reader:Ljava/io/BufferedReader;
    .end local v7           #s:Ljava/lang/String;
    .end local v8           #writer:Ljava/io/BufferedWriter;
    :catch_3
    move-exception v9

    move-object v1, v9

    .line 289
    .local v1, e:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->showErrorAndFinish()V

    goto/16 :goto_1
.end method

.method protected deleteTempFiles()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mView:Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;

    invoke-virtual {v0}, Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 296
    return-void
.end method

.method protected dismissDialogs()V
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->comp_dialog_shown:Z

    if-eqz v0, :cond_0

    .line 357
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->dismissDialog(I)V

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->comp_dialog_shown:Z

    .line 360
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->dismissDialogs()V

    .line 231
    invoke-virtual {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->resetAccelerometer()V

    .line 232
    invoke-virtual {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->deleteTempFiles()V

    .line 233
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 234
    invoke-static {}, Lcom/motorola/CompassCalibrate/CompassCalibrateApp;->getInstance()Lcom/motorola/CompassCalibrate/CompassCalibrateApp;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/CompassCalibrate/CompassCalibrateApp;->mIsExamplePlayed:Z

    .line 235
    invoke-super {p0}, Lcom/motorola/CompassCalibrate/GraphicsActivity;->finish()V

    .line 237
    const-string v0, "CompassCalibrate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish called instructions_shown="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->instructions_shown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method

.method protected getHardKeyboardHiddenStatus()V
    .locals 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mHardKeyboardHidden:Z

    .line 319
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-string v1, "CompassCalibrate"

    .line 335
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/CompassCalibrate/GraphicsActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 337
    iget v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->CALIBRATE_EXAMPLE_REQUEST:I

    if-eq p1, v0, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    if-nez p2, :cond_2

    .line 341
    const-string v0, "CompassCalibrate"

    const-string v0, "got result Not-OK from CompassCalibrateExample"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->finish()V

    goto :goto_0

    .line 343
    :cond_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 344
    const-string v0, "CompassCalibrate"

    const-string v0, "got result OK from CompassCalibrateExample"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->t:Ljava/util/Timer;

    .line 347
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->t:Ljava/util/Timer;

    new-instance v1, Lcom/motorola/CompassCalibrate/CompassCalibrate$4;

    invoke-direct {v1, p0}, Lcom/motorola/CompassCalibrate/CompassCalibrate$4;-><init>(Lcom/motorola/CompassCalibrate/CompassCalibrate;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "CompassCalibrate"

    .line 106
    const-string v0, "CompassCalibrate"

    const-string v0, "onCreate called"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-super {p0, p1}, Lcom/motorola/CompassCalibrate/GraphicsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->checkAccelerometer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0, v4}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->toggleAccelerometer(Z)V

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v3, :cond_3

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mHardKeyboardAttached:Z

    .line 115
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mSensorManager:Landroid/hardware/SensorManager;

    .line 116
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mSensor:Landroid/hardware/Sensor;

    .line 118
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 120
    new-instance v0, Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;

    invoke-direct {v0, p0, p0}, Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;-><init>(Lcom/motorola/CompassCalibrate/CompassCalibrate;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mView:Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;

    .line 121
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mView:Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;

    invoke-virtual {p0, v0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->setContentView(Landroid/view/View;)V

    .line 123
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->pm:Landroid/os/PowerManager;

    .line 124
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->pm:Landroid/os/PowerManager;

    const/16 v1, 0xa

    const-string v2, "CompassCalibrate"

    invoke-virtual {v0, v1, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 125
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 129
    if-eqz p1, :cond_1

    if-eqz p1, :cond_2

    const-string v0, "calibrate_example_launched"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 130
    :cond_1
    const-string v0, "CompassCalibrate"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startCalibrateExample, mCalibrateExampleLaunched set to true, icicle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_4

    const-string v1, "null"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->startCalibrateExample()V

    .line 132
    iput-boolean v3, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mCalibrateExampleLaunched:Z

    .line 142
    :cond_2
    return-void

    :cond_3
    move v0, v4

    .line 113
    goto :goto_0

    .line 130
    :cond_4
    const-string v1, "not null"

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    .line 168
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mView:Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;

    invoke-virtual {v3}, Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 169
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    if-ne p1, v5, :cond_8

    .line 170
    invoke-virtual {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->getHardKeyboardHiddenStatus()V

    .line 171
    iput-boolean v5, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->comp_dialog_shown:Z

    iput-boolean v5, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->completed:Z

    .line 172
    const v3, 0x7f050003

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 174
    invoke-virtual {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->checkFaces()V

    .line 176
    iget-boolean v3, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mHardKeyboardHidden:Z

    if-eqz v3, :cond_5

    .line 177
    iput-boolean v5, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->slideClosed:Z

    .line 181
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->checkFaces()V

    .line 185
    invoke-virtual {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 189
    .local v1, mlidKeyboardAccessibility:I
    iget-boolean v3, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->slideOpened:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->slideClosed:Z

    if-nez v3, :cond_2

    :cond_0
    iget-boolean v3, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mHardKeyboardAttached:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->slideClosed:Z

    if-nez v3, :cond_2

    :cond_1
    if-nez v1, :cond_6

    .line 192
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "compass_calibrated"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 193
    const-string v3, "CompassCalibrate"

    const-string v4, "Compass Calibrated. Set compass_calibrated to 1 in Secure Settings DB!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const v2, 0x7f05000a

    .line 200
    .local v2, msgId:I
    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 203
    iget-boolean v3, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mHardKeyboardAttached:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->slideOpened:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->slideClosed:Z

    if-nez v3, :cond_4

    :cond_3
    if-eqz v1, :cond_4

    .line 204
    const v3, 0x7f050008

    new-instance v4, Lcom/motorola/CompassCalibrate/CompassCalibrate$2;

    invoke-direct {v4, p0}, Lcom/motorola/CompassCalibrate/CompassCalibrate$2;-><init>(Lcom/motorola/CompassCalibrate/CompassCalibrate;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 211
    :cond_4
    const v3, 0x7f050009

    new-instance v4, Lcom/motorola/CompassCalibrate/CompassCalibrate$3;

    invoke-direct {v4, p0}, Lcom/motorola/CompassCalibrate/CompassCalibrate$3;-><init>(Lcom/motorola/CompassCalibrate/CompassCalibrate;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 218
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 221
    .end local v1           #mlidKeyboardAccessibility:I
    .end local v2           #msgId:I
    :goto_2
    return-object v3

    .line 179
    :cond_5
    iput-boolean v5, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->slideOpened:Z

    goto :goto_0

    .line 195
    .restart local v1       #mlidKeyboardAccessibility:I
    :cond_6
    iget-boolean v3, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->slideClosed:Z

    if-eqz v3, :cond_7

    .line 196
    const v2, 0x7f050004

    .restart local v2       #msgId:I
    goto :goto_1

    .line 198
    .end local v2           #msgId:I
    :cond_7
    const v2, 0x7f050005

    .restart local v2       #msgId:I
    goto :goto_1

    .line 221
    .end local v1           #mlidKeyboardAccessibility:I
    .end local v2           #msgId:I
    :cond_8
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_2
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Lcom/motorola/CompassCalibrate/GraphicsActivity;->onPause()V

    .line 162
    invoke-virtual {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->dismissDialogs()V

    .line 163
    invoke-virtual {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->resetAccelerometer()V

    .line 164
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 165
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 166
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 147
    invoke-super {p0}, Lcom/motorola/CompassCalibrate/GraphicsActivity;->onResume()V

    .line 148
    iput-boolean v4, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->completed:Z

    .line 150
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 151
    invoke-virtual {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->getHardKeyboardHiddenStatus()V

    .line 152
    iget-boolean v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->accel_was_enabled:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0, v4}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->toggleAccelerometer(Z)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 156
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 371
    invoke-super {p0, p1}, Lcom/motorola/CompassCalibrate/GraphicsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 372
    const-string v0, "CompassCalibrate"

    const-string v1, "onSaveInstanceState callled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v0, "calibrate_example_launched"

    iget-boolean v1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->mCalibrateExampleLaunched:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 374
    return-void
.end method

.method protected resetAccelerometer()V
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->accel_was_enabled:Z

    if-eqz v0, :cond_0

    .line 311
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->toggleAccelerometer(Z)V

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->accel_was_enabled:Z

    .line 314
    :cond_0
    return-void
.end method

.method protected startCalibrateExample()V
    .locals 3

    .prologue
    .line 326
    const-string v1, "CompassCalibrate"

    const-string v2, "startCalibrateExample called "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 328
    .local v0, inExample:Landroid/content/Intent;
    const-string v1, "com.motorola.CompassCalibrate"

    const-class v2, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    iget v1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate;->CALIBRATE_EXAMPLE_REQUEST:I

    invoke-virtual {p0, v0, v1}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->startActivityForResult(Landroid/content/Intent;I)V

    .line 331
    return-void
.end method

.method protected toggleAccelerometer(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 307
    return-void

    .line 306
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
