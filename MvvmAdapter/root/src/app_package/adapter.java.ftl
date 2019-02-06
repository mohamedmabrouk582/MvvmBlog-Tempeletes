package ${packageName}.ui.adapters;
import android.databinding.DataBindingUtil;
import android.support.annotation.LayoutRes;
import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.List;
import ${packageName}.R;
import ${packageName}.data.models.${modelName};
import ${packageName}.databinding.${modelName}ItemViewBinding;
import ${packageName}.BR;

public class ${adapterName}Adapter  extends RecyclerView.Adapter<${adapterName}Adapter.Holder> {
    int pos;
    private List<${modelName}> data ;
    public interface ${adapterName}Listener {
    void onClick(${modelName} item,int pos);
    }
    private ${adapterName}Listener listener;
    public ${adapterName}Adapter(){
        data=new ArrayList<>();
    }
    
    public void setListener(${adapterName}Listener listener){
       this.listener=listener;
      }

       public void setData(List<${modelName}> data) {
        this.data = data;
        notifyDataSetChanged();
    }

    public void addItem(${modelName} item){
        data.add(item);
       // notifyDataSetChanged();
        notifyItemInserted(data.size()-1);
    }

    @NonNull
    @Override
    public Holder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        ${modelName}ItemViewBinding binding=DataBindingUtil.inflate(LayoutInflater.from(parent.getContext()), R.layout.${modelName[0]?lower_case}${modelName[1..]}_item_view,parent,false);
        return new Holder(binding);
    }

    public int currentPos(){
        return pos;
    }

    @Override
    public void onBindViewHolder(@NonNull Holder holder, int position) {
        pos=position;
      holder.bind(data.get(position));
    }
    @Override
    public int getItemCount() {
        return data==null?0:data.size();
    }

    class Holder extends RecyclerView.ViewHolder{
        ${modelName}ItemViewBinding itemViewBinding;
        public Holder(${modelName}ItemViewBinding itemViewBinding) {
            super(itemViewBinding.getRoot());
            this.itemViewBinding=itemViewBinding;

        }
        
        public void bind(${modelName} product){
            itemViewBinding.setVariable(BR.${BrName},product);
            itemViewBinding.executePendingBindings();
            itemViewBinding.getRoot().setOnClickListener((v) ->
                    listener.onClick(product, getAdapterPosition())
            );
        }
    }
}
