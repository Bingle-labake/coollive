.class Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActivityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/ActivityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;


# direct methods
.method private constructor <init>(Lcom/rayclear/videomessage/ui/ActivityInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 743
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rayclear/videomessage/ui/ActivityInfo;Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 743
    invoke-direct {p0, p1}, Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;-><init>(Lcom/rayclear/videomessage/ui/ActivityInfo;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 746
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->screenOritation:I
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$2(Lcom/rayclear/videomessage/ui/ActivityInfo;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 748
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->videos:Ljava/util/Vector;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$3(Lcom/rayclear/videomessage/ui/ActivityInfo;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 750
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->videos:Ljava/util/Vector;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$3(Lcom/rayclear/videomessage/ui/ActivityInfo;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->videos:Ljava/util/Vector;
    invoke-static {v1}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$3(Lcom/rayclear/videomessage/ui/ActivityInfo;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 755
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 759
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 763
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->screenOritation:I
    invoke-static {v13}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$2(Lcom/rayclear/videomessage/ui/ActivityInfo;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 765
    if-nez p2, :cond_0

    .line 767
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x7f030020

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 769
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "VideoListAdapter position = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->videos:Ljava/util/Vector;
    invoke-static {v13}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$3(Lcom/rayclear/videomessage/ui/ActivityInfo;)Ljava/util/Vector;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/rayclear/videomessage/model/VideoModel;

    .line 771
    .local v10, videoModel:Lcom/rayclear/videomessage/model/VideoModel;
    const v13, 0x7f0800a9

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 772
    .local v9, thumbImageView:Landroid/widget/ImageView;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 773
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 775
    const v13, 0x7f0800aa

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 776
    .local v4, playiconImageView:Landroid/widget/ImageView;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 777
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 779
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-virtual {v13}, Lcom/rayclear/videomessage/ui/ActivityInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    iget-object v14, v10, Lcom/rayclear/videomessage/model/VideoModel;->thumbUrl:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/rayclear/videomessage/common/SysUtil;->getThumbCacheWithUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 780
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 782
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 783
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-virtual {v13}, Lcom/rayclear/videomessage/ui/ActivityInfo;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Display;->getWidth()I

    move-result v7

    .line 784
    .local v7, screenWidth:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    mul-int/2addr v13, v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    div-int v2, v13, v14

    .line 785
    .local v2, imageviewHeight:I
    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 786
    .local v3, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 787
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 788
    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 795
    .end local v2           #imageviewHeight:I
    .end local v3           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v7           #screenWidth:I
    :goto_0
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "thumbImageView.getLayoutParams().width = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    iget v14, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 796
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "thumbImageView.getLayoutParams().height = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    iget v14, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 798
    const v13, 0x7f0800ab

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 799
    .local v8, textView:Landroid/widget/TextView;
    iget-wide v13, v10, Lcom/rayclear/videomessage/model/VideoModel;->timestamp:J

    invoke-static {v13, v14}, Lcom/rayclear/videomessage/common/SysUtil;->getDateStringFromMilliTime(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 881
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #playiconImageView:Landroid/widget/ImageView;
    .end local v8           #textView:Landroid/widget/TextView;
    .end local v9           #thumbImageView:Landroid/widget/ImageView;
    .end local v10           #videoModel:Lcom/rayclear/videomessage/model/VideoModel;
    :goto_1
    return-object p2

    .line 792
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #playiconImageView:Landroid/widget/ImageView;
    .restart local v9       #thumbImageView:Landroid/widget/ImageView;
    .restart local v10       #videoModel:Lcom/rayclear/videomessage/model/VideoModel;
    :cond_1
    const v13, 0x7f0200be

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 802
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #playiconImageView:Landroid/widget/ImageView;
    .end local v9           #thumbImageView:Landroid/widget/ImageView;
    .end local v10           #videoModel:Lcom/rayclear/videomessage/model/VideoModel;
    :cond_2
    if-nez p2, :cond_3

    .line 804
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x7f03001f

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 807
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->videos:Ljava/util/Vector;
    invoke-static {v13}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$3(Lcom/rayclear/videomessage/ui/ActivityInfo;)Ljava/util/Vector;

    move-result-object v13

    mul-int/lit8 v14, p1, 0x2

    invoke-virtual {v13, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/rayclear/videomessage/model/VideoModel;

    .line 808
    .local v11, videoModelLeft:Lcom/rayclear/videomessage/model/VideoModel;
    if-eqz v11, :cond_4

    .line 810
    const v13, 0x7f0800a0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 811
    .restart local v9       #thumbImageView:Landroid/widget/ImageView;
    mul-int/lit8 v13, p1, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 812
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 814
    const v13, 0x7f0800a1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 815
    .local v5, playiconLeftImageView:Landroid/widget/ImageView;
    mul-int/lit8 v13, p1, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 816
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 818
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-virtual {v13}, Lcom/rayclear/videomessage/ui/ActivityInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    iget-object v14, v11, Lcom/rayclear/videomessage/model/VideoModel;->thumbUrl:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/rayclear/videomessage/common/SysUtil;->getThumbCacheWithUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 819
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_5

    .line 821
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 822
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-virtual {v13}, Lcom/rayclear/videomessage/ui/ActivityInfo;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Display;->getWidth()I

    move-result v13

    add-int/lit8 v13, v13, -0x28

    div-int/lit8 v7, v13, 0x2

    .line 823
    .restart local v7       #screenWidth:I
    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 824
    .restart local v3       #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    const/4 v13, -0x1

    iput v13, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 825
    mul-int/lit8 v13, v7, 0x9

    div-int/lit8 v13, v13, 0x10

    iput v13, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 826
    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 831
    .end local v3           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v7           #screenWidth:I
    :goto_2
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "thumbImageView.getLayoutParams().width = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    iget v14, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 832
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "thumbImageView.getLayoutParams().height = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    iget v14, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 834
    const v13, 0x7f0800a2

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 835
    .restart local v8       #textView:Landroid/widget/TextView;
    iget-wide v13, v11, Lcom/rayclear/videomessage/model/VideoModel;->timestamp:J

    invoke-static {v13, v14}, Lcom/rayclear/videomessage/common/SysUtil;->getDateStringFromMilliTime(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 838
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #playiconLeftImageView:Landroid/widget/ImageView;
    .end local v8           #textView:Landroid/widget/TextView;
    .end local v9           #thumbImageView:Landroid/widget/ImageView;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->videos:Ljava/util/Vector;
    invoke-static {v13}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$3(Lcom/rayclear/videomessage/ui/ActivityInfo;)Ljava/util/Vector;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    mul-int/lit8 v14, p1, 0x2

    add-int/lit8 v14, v14, 0x1

    if-le v13, v14, :cond_7

    .line 840
    const v13, 0x7f0800a3

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 841
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->videos:Ljava/util/Vector;
    invoke-static {v13}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$3(Lcom/rayclear/videomessage/ui/ActivityInfo;)Ljava/util/Vector;

    move-result-object v13

    mul-int/lit8 v14, p1, 0x2

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/rayclear/videomessage/model/VideoModel;

    .line 842
    .local v12, videoModelRight:Lcom/rayclear/videomessage/model/VideoModel;
    const v13, 0x7f0800a5

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 843
    .restart local v9       #thumbImageView:Landroid/widget/ImageView;
    mul-int/lit8 v13, p1, 0x2

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 844
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 846
    const v13, 0x7f0800a6

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 847
    .local v6, playiconRightImageView:Landroid/widget/ImageView;
    mul-int/lit8 v13, p1, 0x2

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 848
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 850
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-virtual {v13}, Lcom/rayclear/videomessage/ui/ActivityInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    iget-object v14, v12, Lcom/rayclear/videomessage/model/VideoModel;->thumbUrl:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/rayclear/videomessage/common/SysUtil;->getThumbCacheWithUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 851
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_6

    .line 853
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 854
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-virtual {v13}, Lcom/rayclear/videomessage/ui/ActivityInfo;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Display;->getWidth()I

    move-result v13

    add-int/lit8 v13, v13, -0x28

    div-int/lit8 v7, v13, 0x2

    .line 855
    .restart local v7       #screenWidth:I
    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 856
    .restart local v3       #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    const/4 v13, -0x1

    iput v13, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 857
    mul-int/lit8 v13, v7, 0x9

    div-int/lit8 v13, v13, 0x10

    iput v13, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 858
    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 863
    .end local v3           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v7           #screenWidth:I
    :goto_3
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "thumbImageView.getLayoutParams().width = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    iget v14, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 864
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "thumbImageView.getLayoutParams().height = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    iget v14, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 866
    const v13, 0x7f0800a7

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 867
    .restart local v8       #textView:Landroid/widget/TextView;
    iget-wide v13, v12, Lcom/rayclear/videomessage/model/VideoModel;->timestamp:J

    invoke-static {v13, v14}, Lcom/rayclear/videomessage/common/SysUtil;->getDateStringFromMilliTime(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 828
    .end local v6           #playiconRightImageView:Landroid/widget/ImageView;
    .end local v8           #textView:Landroid/widget/TextView;
    .end local v12           #videoModelRight:Lcom/rayclear/videomessage/model/VideoModel;
    .restart local v5       #playiconLeftImageView:Landroid/widget/ImageView;
    :cond_5
    const v13, 0x7f0200be

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 860
    .end local v5           #playiconLeftImageView:Landroid/widget/ImageView;
    .restart local v6       #playiconRightImageView:Landroid/widget/ImageView;
    .restart local v12       #videoModelRight:Lcom/rayclear/videomessage/model/VideoModel;
    :cond_6
    const v13, 0x7f0200be

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 870
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #playiconRightImageView:Landroid/widget/ImageView;
    .end local v9           #thumbImageView:Landroid/widget/ImageView;
    .end local v12           #videoModelRight:Lcom/rayclear/videomessage/model/VideoModel;
    :cond_7
    const v13, 0x7f0800a3

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method
