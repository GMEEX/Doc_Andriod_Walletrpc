package cn.bizzan.adapter;

import android.support.annotation.LayoutRes;
import android.support.annotation.Nullable;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import cn.bizzan.R;
import cn.bizzan.customview.MyHorizontalScrollView;
import cn.bizzan.entity.Coin;
import cn.bizzan.entity.WalletConstract;

/**
 * Created by Administrator on 2018/2/5.
 */

public class SelectCoinsAdapter extends BaseQuickAdapter<WalletConstract, BaseViewHolder> {
    public SelectCoinsAdapter(@LayoutRes int layoutResId, @Nullable List<WalletConstract> data) {
        super(layoutResId, data);

    }
    @Override
    protected void convert(final BaseViewHolder helper, WalletConstract item) {

        helper.setText(R.id.tvCoin, item.getContractCoin().getCoinSymbol());

    }
}
