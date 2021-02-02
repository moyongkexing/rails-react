import axios from 'axios';
import { orders} from '../urls/index';

export const postOrder = async(params) => {
  return await axios.post(orders,
    {
      line_food_ids: params.line_foods_ids
    },
  )
  .then(res => {
    return res.data
  })
  .catch((e) => console.error(e))
}
