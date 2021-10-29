/*
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
POSSIBILITY OF SUCH DAMAGE.
*/

import UIKit

protocol PodcastViewControllerProtocol {
 //   func refreshView()
}

class PodcastViewController: BaseView<PodcastPresenterInputProtocol> {
   
    // MARK: - IBOutlets
    @IBOutlet weak var podcastTV: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 //       self.presenter?.fetchData()
        self.configTableView()
    }

    private func configTableView(){
        self.podcastTV.delegate = self
        self.podcastTV.dataSource = self
        self.podcastTV.register(PodcastCell.nib, forCellReuseIdentifier: PodcastCell.identifier)
    }
    
}

extension PodcastViewController: PodcastViewControllerProtocol {

 //   func refreshView() {
   //     let aux = self.presenter?.getInformationObject()
     //   debugPrint(aux!)
        
  //  }
}

extension PodcastViewController: PodcastViewControllerProtocol{
    
}

extension PodcastViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.presenter?.getNumerOfRowInSection() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellPodcast = self.podcastTV.dequeueReusableCell(withIdentifier: PodcastCell.identifier, for: indexPath) as! PodcastCell
        if let model = self.presenter?.getInformationObject(with: indexPath.row){
            cellPodcast.configCell(data: model)
        }
        return cellPodcast
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 192
    }
}


